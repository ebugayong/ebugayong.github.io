class FirstyearsController < ApplicationController 

  def index 
  	@firstyears = Firstyear.all 
  end 

  def new
    @firstyear = Firstyear.new 
  end 

  def show 
    @firstyear = Firstyear.find_by(id: params["id"])
        @meetings = Meeting.where(meeting_id: @firstyear.id)
    @cases = []
    @meetings.each do |meeting|
    @cases << Case.find_by(id: meeting.firstyear_id)
    end 	
  end 

  def create
    firstyear_params = params.require(:firstyear).permit(:first_name, :last_name)
    Firstyear.create(firstyear_params)
    redirect_to firstyears_path
  end

  def edit 
    @firstyear = Firstyear.find_by(id: params["id"])
  end 

  def update
    firstyear_params = params.require(:firstyear).permit(:first_name, :last_name)
    @firstyear = Firstyear.find_by(id: params["id"])
    @firstyear.update(firstyear_params)
    redirect_to firstyears_path
  end 

  def destroy
    @firstyear = Firstyear.find_by(id: params["id"])
    @firstyear.destroy
    redirect_to firstyears_path
  end 

end 