Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :documents, only: [:create, :show, :destroy, :trash_bin, :restore_file, :destroy_permanent, :destroy_all]
  resources :areas, only: [:show, :index]

  devise_for :users

  get "home/search" => "home#search", as: :search
  get "document/all_files" => "documents#all_files", as: :all_files
  get "area/page_view/:id" => "areas#page_view", as: :page_view
  get "area/grid_view/:id" => "areas#grid_view", as: :grid_view

  post "document/starred/:id" => "documents#toggle_starred", as: :toggle_starred

  resources :notifications, only: :index
  resources :documents do
    get :autocomplete_document_file, :on => :collection
  end

  get "document/starred", to: "documents#starred_files", as: :get_starred
  get "document/trash" => "documents#trash_bin", as: :get_trash
  get "document/personal" => "documents#personal_files", as: :get_personal
  get "document/sent" => "documents#sent", as: :sent_documents

  post "document/restore/:id" => "documents#restore_file", as: :post_restore
  post "document/destroy/:id" => "documents#destroy_permanent", as: :destroy_permanent
  post "document/accept/:id" => "documents#accept", as: :accept_document
  post "document/reject/:id" => "documents#reject", as: :reject_document
  post "document/accept_all" => "documents#accept_all", as: :accept_all

  get "recyclebin/deleteall" => "documents#destroy_all", as: :destroy_all

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
