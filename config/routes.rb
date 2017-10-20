Rails.application.routes.draw do

    root to: 'sessions#new'

    # Sessions controller for logging in and out
    get     '/login',       to: 'sessions#new'
    post    '/login',       to: 'sessions#create'
    delete  '/logout',      to: 'sessions#destroy'

    # Logged-in home page
    get     '/home',        to: 'visitors#index'

end
