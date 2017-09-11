Rails.application.routes.draw do
  root :to => 'main#index'
  get 'index', :to => 'main#index'
  get 'wine/:id', :to => 'main#wine'
  get 'settings/devices', :to => 'main#devices'
  get 'settings/account', :to => 'main#account'
  get 'settings/system', :to => 'main#system'
  get 'settings/devices/new', :to => 'main#new'
  post 'settings/devices/create', :to => 'main#create'
end
