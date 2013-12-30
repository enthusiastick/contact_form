ContactForm::Application.routes.draw do
  resources :inquiries, only: [:create, :new, :show]
end
