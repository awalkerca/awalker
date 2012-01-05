class ContactController < ApplicationController

  caches_action :new
  
  def new
    @message = Message.new
    # render :layout => false
  end
  
  def create
    @message = Message.new(params[:message])
    if @message.valid?
      Notifier.new_message(@message).deliver
      flash[:success] = "Thanks for the note, I'll get back to you as soon as I can!"
      redirect_to contact_path
    else
      flash.now[:error] = "Sorry, unable to send. Please check your information and try again."
      render :action => "new" #, :layout => false
    end
  end
  
end
