Rails.application.routes.draw do
  root :to => 'main#index'
  get 'wine/:id', :to => 'main#wine'
  get 'settings/devices', :to => 'main#devices'
  get 'settings/account', :to => 'main#account'
  get 'settings/system', :to => 'main#system'
end
