class ToolsController < ApplicationController
  before_filter :authenticate_user!
  # GET /tools
  # GET /tools.json
  def index
    @tools = Tool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tools }
    end
  end

  def list
    condition = params[:condition].to_i
    search_id = params[:search_id].to_i
    search_name = params[:search_name]

    if condition === 1
      @tools = Tool.where("category = 1")
      puts @tools
    elsif  condition === 2
      @tools = Tool.where("category = 2")
    elsif condition === 3
      @tools = Tool.where("category = 3")
    elsif condition === 4
      @tools = Tool.where("category = 4")
    elsif condition === 5
      @tools = Tool.where("category = 5")
    elsif condition === 6
      @tools = Tool.where("category = 6")
    elsif condition === 7
      @tools = Tool.where("category = 7")
    elsif condition === 8  
      @tools = Tool.shop
    elsif condition === 9  
      @tools = Tool.where("condition = false")
    else
      unless search_id == 0
        @tools = Tool.search_id(search_id)
      else 
        @tools = Tool.search_name(search_name)
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tools }
    end
  end

  def return
    @tool = Tool.find(params[:id])
    shop_user = User.find(:first, :conditions => ['name = "SHOP"'])
    shop_job = Jobsite.find(:first, :conditions => ['jobno = "00-000"'])
    old_job = Jobsite.find(@tool.jobsite_id)
    old_job.tools.delete(@tool)
    current_user.tools.delete(@tool)
    @tool.update_attribute(:user_id, shop_user.id)
    @tool.update_attribute(:jobsite_id, shop_job.id)
    shop_user.tools << @tool
    shop_job.tools << @tool
    @tool.user = shop_user
    @tool.jobsite = shop_job

    respond_to do |format|
      if @tool.save
        format.html { redirect_to @tool, notice: 'Tool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end
  # GET /tools/1
  # GET /tools/1.json
  def show
    @tool = Tool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tool }
    end
  end

  # GET /tools/new
  # GET /tools/new.json
  def new
    @jobs = Jobsite.active
    @tool = Tool.new
    @tool.condition = true

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tool }
    end
  end

  # GET /tools/1/edit
  def edit
    @tool = Tool.find(params[:id])
    @jobs = Jobsite.active
  end

  # POST /tools
  # POST /tools.json
  def create
    @user = current_user
    @tool = Tool.new(params[:tool])
    @job = Jobsite.find(@tool.jobsite_id)
    @tool.user_id = @user.id
    @user.tools << @tool
    @job.tools << @tool

    respond_to do |format|
      if @tool.save
        format.html { redirect_to @tool, notice: 'Tool was successfully created.' }
        format.json { render json: @tool, status: :created, location: @tool }
      else
        format.html { render action: "new" }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tools/1
  # PUT /tools/1.json
  def update
    @tool = Tool.find(params[:id])
    @user = current_user
    @tool.user_id = @user.id
    @user.tools << @tool

    respond_to do |format|
      if @tool.update_attributes(params[:tool])
        format.html { redirect_to @tool, notice: 'Tool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tools/1
  # DELETE /tools/1.json
  def destroy
    @tool = Tool.find(params[:id])
    @job = Jobsite.find(@tool.jobsite_id)
    
    @job.tools.delete(@tool)
    current_user.tools.delete(@tool)
    @tool.destroy

    respond_to do |format|
      format.html { redirect_to tools_url }
      format.json { head :no_content }
    end
  end
end
