Rails.application.routes.draw do
  get "/users", to: "user#index"
  get "/users:id", to: "users#show"
  get "/users/:user_id/posts", to: "posts#index"
  get "/users:user_id/posts/:id", to: "posts#show"
end
