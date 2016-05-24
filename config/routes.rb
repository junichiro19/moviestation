Rails.application.routes.draw do

  get 'sessions/new'

  root to: 'welcome#home'
  get     'signup', to: 'uses#new'
  
  
  resource :users

  
end
