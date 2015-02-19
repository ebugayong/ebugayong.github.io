class MeetingsController <ApplicationController 
   def index 
    @meetings = Meeting.all 
  end 

  def new
    @meeting = Meeting.new 
  end 

  def edit 
    @meeting = Meeting.find_by(id: params["id"])
  end 

  def create
    meeting_params = params.require(:meeting).permit!
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
     redirect_to meetings_path
    else
      render text: "FAIL"
    end
  end

end 