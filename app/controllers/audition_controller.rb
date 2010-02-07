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
  
  def flip_status
    if request.xhr?
      audition = Audition.find(params[:id])
      audition.flip_status
      render :update do |page|
        page.replace_html "audition_#{audition.id}", :partial => 'status_cell', :locals => {:audition => audition}
      end
    end
  end
end
