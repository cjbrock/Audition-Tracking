class AuditionController < ApplicationController
  def index
    @auditions = Audition.find(:all)
  end
  
  def new
    if request.post?
      @audition = Audition.new(params[:audition])
      if @audition.save
        flash[:notice] = "New audition created"
        return redirect_to(:action => 'index')
      end
    end
  end
  
  def view_audition
    @audition = Audition.find(params[:id])
  end
end
