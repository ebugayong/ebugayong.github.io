class FirstyearsController < ApplicationController

  def index
    @firstyears = FirstYear.all
  end

  def show
    @firstyear = FirstYear.find_by(id: params["id"])
    @meetings = Meeting.where(firstyear_id: @firstyear.id)
    @cases=[]
     @meetings.each do |meeting|
    @cases << Case.find_by(id: meeting.firstyear_id)
     end
  end
end