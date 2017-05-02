# frozen_string_literal: true
Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  resources :books, except: [:new, :edit]
  resources :tasks, except: [:new, :edit]
  resources :jobs

end
