Rails.application.routes.draw do
  root 'static_pages#index'
  post 'send_email', :to => :send_email, :controller => 'static_pages'
end
