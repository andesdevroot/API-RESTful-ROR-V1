Rails.application.routes.draw do
  devise_for :users

  namespace :api,defaults: {format: :json} do
    namespace :v1 do
      devise_scope :user do
        post "sign_up", to: "registration#create"
      end
    end
  end
end
