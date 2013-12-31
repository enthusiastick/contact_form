ContactForm::Application.routes.draw do
  resources :inquiries, only: [:create, :index, :new, :show]
end
