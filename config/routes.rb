Rails.application.routes.draw do
  get 'nv/index'
  get 'khach_hang/index'
  resources :dat_hang, only: [:index]
  resources :profile, only: [:edit, :update]

  get 'profile/index'
  get 'profile/edit'
  resources :don_dat_hangs, only: [:index, :new, :create, :show, :edit, :destroy]
  get 'dat_hang/index'
  get 'lien_he/index'
  get 'carts/index'
  get 'admin/index'
  resources :gio_hangs
  get 'dang_nhap/index'
  get 'dang_ky/index'
  get 'chi_tiet_sach/index'
  resources :nguoidungs do
    collection do
      get :khach_hang
      get :nhan_vien
    end
  end
  resources :loai_quyens
  get 'home/index'
  resources :saches
  resources :danh_mucs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  get 'dang_ky', to: 'dang_ky#index'
  post 'dang_ky', to: 'dang_ky#create'

  # Đăng nhập và đăng xuất
  post 'login', to: 'sessions#login'
  delete 'logout', to: 'sessions#logout', as: 'logout'
  get 'logout', to: 'sessions#logout'  # Route GET cho logout
  post 'add_to_cart/:id', to: 'gio_hangs#add_to_cart', as: 'add_to_cart'
  delete 'remove_from_cart/:id', to: 'carts#remove_from_cart', as: 'remove_from_cart'
  post 'update_cart/:id', to: 'carts#update_cart', as: 'update_cart'

  resources :chi_tiet_sach, only: [:index] do
    post 'CTS_them_sach', on: :member
  end
end
