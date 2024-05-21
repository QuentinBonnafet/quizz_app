# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions, only: [:index, :show] do
    member do
      post 'check_answer'
    end
  end
  root 'questions#index'
end
