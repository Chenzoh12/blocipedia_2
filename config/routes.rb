Rails.application.routes.draw do
  devise_for :users
    get 'welcome/index'
    get 'welcome/about'
    get 'wikis/index'

    root 'welcome#index'
end
