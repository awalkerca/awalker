class MainController < ApplicationController
  @actions = ["home", "social", "about", "help", "experiments", "work"]
  
  @actions.each do |action|
    caches_action action.to_sym
  end
  
  def home
    if params[:e] == "yes"
      @actions.each do |action|
        expire_page :action => action
      end
    end
  end
  
  def social
    #render :layout => false
  end

  def about
    # render :layout => false
  end
  
  def work
    # render :layout => false
  end
  
  def experiments
    # render :layout => false
  end

end
