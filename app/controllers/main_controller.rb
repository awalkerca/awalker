class MainController < ApplicationController
  ACTIONS = ["home", "social", "about", "help", "experiments", "work"]
  
  ACTIONS.each do |action|
    caches_action action.to_sym
  end
  
  def home
    #render :layout => false
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
  
  def reset_cache
   ACTIONS.each do |action|
      expire_page :action => action
    end  
    redirect_to :root
  end

end
