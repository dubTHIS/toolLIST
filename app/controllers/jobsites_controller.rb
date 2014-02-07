class JobsitesController < ApplicationController
  before_filter :authenticate_user!

  # GET /jobsites
  # GET /jobsites.json
  def index
    @jobsites = Jobsite.active

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobsites }
    end
  end

  # GET /jobsites/list
  def list
    unless params[:search_jobno].nil?
      @jobsites = Jobsite.search_jobno(params[:search_jobno])
    else 
      unless params[:search_name].nil?
        @jobsites = Jobsite.search_name(params[:search_name])
      else
        @jobsites = Jobsite.all
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobsites }
    end
  end

  # GET /jobsites/1
  # GET /jobsites/1.json
  def show
    @jobsite = Jobsite.find(params[:id])
    @users = @jobsite.users.uniq

    @users = @jobsite.users.select(:name).distinct
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jobsite }
    end
  end

  # GET /jobsites/new
  # GET /jobsites/new.json
  def new
    @jobsite = Jobsite.new
    @jobsite.active = true

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jobsite }
    end
  end

  # GET /jobsites/1/edit
  def edit
    @jobsite = Jobsite.find(params[:id])
  end

  # POST /jobsites
  # POST /jobsites.json
  def create
    @jobsite = Jobsite.new(params[:jobsite])

    respond_to do |format|
      if @jobsite.save
        format.html { redirect_to @jobsite, notice: 'Jobsite was successfully created.' }
        format.json { render json: @jobsite, status: :created, location: @jobsite }
      else
        format.html { render action: "new" }
        format.json { render json: @jobsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobsites/1
  # PUT /jobsites/1.json
  def update
    @jobsite = Jobsite.find(params[:id])

    respond_to do |format|
      if @jobsite.update_attributes(params[:jobsite])
        if !@jobsite.active?
          @jobsite.tools.each do |t|
            @tool = Tool.find(t.id)
            current_user.tools.delete(@tool)
            @tool.update_attribute(:user_id, shop_user.id)
            @tool.update_attribute(:jobsite_id, shop_job.id)
            shop_user.tools << @tool
            shop_job.tools << @tool
            @tool.user = shop_user
            @tool.jobsite = shop_job
            @tool.save
          end
          @jobsite.tools.delete_all
        end
        format.html { redirect_to @jobsite, notice: 'Jobsite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jobsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobsites/1
  # DELETE /jobsites/1.json
  def destroy
    @jobsite = Jobsite.unscoped.find(params[:id])
    @shop = Jobsite.where("jobno = 00-000")
    @ushop = User.where("name = 'SHOP'")
    @jobsite.tools.each do |tool|
      t = Tool.find(tool.id)
      t.jobsite_id = @shop.id
      t.user_id = @ushop.id
    end


    @jobsite.destroy

    respond_to do |format|
      format.html { redirect_to jobsites_url }
      format.json { head :no_content }
    end
  end
end
