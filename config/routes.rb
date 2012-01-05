Awalker::Application.routes.draw do

  match 'social' => 'main#social', :as => 'social', :via => :get
  match 'about' => 'main#about', :as => 'about', :via => :get
  match 'help' => 'main#help', :as => 'help', :via => :get
  match 'experiments' => 'main#experiments', :as => 'experiments', :via => :get
  match 'home' => 'main#home', :as=>'home', :via => :get 
  match 'work' => "main#work", :as=> 'work', :via => :get
  match 'reset_cache' => 'main#reset_cache', :as => 'reset_cache', :via => :get
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  root :to => "main#about"
end
