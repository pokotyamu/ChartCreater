Rails.application.routes.draw do
  get 'lines/index'
  get 'lines/show' => 'lines#show'  
end
