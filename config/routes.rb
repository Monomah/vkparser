#require 'logged_in_constraint'

Vkparser::Application.routes.draw do
  get 'callback' => 'sessions#callback'
  delete 'logout' => 'sessions#destroy'
  
  root to: 'main#index', constraints: LoggedInConstraint.new
  root to: 'sessions#new'
end