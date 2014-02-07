class HoursController < ApplicationController
  before_filter :authenticate_user!
  # GET /hours
  # GET /hours.json
  def index
    @hours = current_user.hours.all
    @hours_by_date = @hours.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @date2 = params[:date2] ? Date.parse(params[:date2]) : Date.today
    @first = @date2.beginning_of_week(:saturday)
    @last = @date2.end_of_week(:saturday)
    @week = (@first..@last).to_a
    t = current_user.hours.find(:all, :conditions => ["date between ? and ?",
         @first, @last])
    @total = t.sum(&:total)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hours }
    end
  end

  def list
    @users = User.all
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @first = @date.beginning_of_week(:saturday)
    @last = @date.end_of_week(:saturday)
    @week = (@first..@last).to_a

    respond_to do |format|
      format.html # list.html.erb
      format.json { render json: @hours }
    end
  end

  # GET /hours/1
  # GET /hours/1.json
  def show
    @hour = Hour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hour }
    end
  end

  # GET /hours/new
  # GET /hours/new.json
  def new
    @jobs = Jobsite.active
    @hour = Hour.new
    @hour.date = params[:date]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hour }
    end
  end

  # GET /hours/1/edit
  def edit
    @hour = Hour.find(params[:id])
  end

  # POST /hours
  # POST /hours.json
  def create
    @hour = Hour.new(params[:hour])
    @user = current_user
    @hour = Hour.new(params[:hour])
    @job = Jobsite.find(@hour.jobsite_id)
    @hour.user_id = @user.id
    @user.hours << @hour
    @job.hours << @hour

    respond_to do |format|
      if @hour.save
        format.html { redirect_to @hour, notice: 'Hour was successfully created.' }
        format.json { render json: @hour, status: :created, location: @hour }
      else
        format.html { render action: "new" }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hours/1
  # PUT /hours/1.json
  def update
    @hour = Hour.find(params[:id])

    respond_to do |format|
      if @hour.update_attributes(params[:hour])
        format.html { redirect_to @hour, notice: 'Hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.json
  def destroy
    @hour = Hour.find(params[:id])
    @job = Jobsite.find(@hour.jobsite_id)
    @hours = current_user.hours.where("jobsite_id = ?", @hour.jobsite_id)
    if ( @hours.length() === 1 )
      @job.users.delete(current_user)
    end
    @job.hours.delete(@hour)
    current_user.hours.delete(@hour)
    @hour.destroy
    respond_to do |format|
      format.html { redirect_to hours_url }
      format.json { head :no_content }
    end
  end
end
