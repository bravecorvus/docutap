Rails.application.routes.draw do
  get 'index/index'
  get '/maps', to: 'search#json'
  root 'index#index'
end
