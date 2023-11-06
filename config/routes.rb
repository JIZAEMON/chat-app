Rails.application.routes.draw do
  # test
  get 'messages/index'
  root to: "messages#index"
end
