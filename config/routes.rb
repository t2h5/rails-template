# frozen_string_literal: true

Rails.application.routes.draw do
  get 'health', to: 'health#index'
  get 'welcome', to: 'welcome#index'
end
