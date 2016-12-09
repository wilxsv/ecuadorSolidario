Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  scope '/admin' do
    resources :categoria, :proyectos
  end
  scope(path_names: { new: 'nueva', edit: 'editar', registra:'registra' }) do
    resources :proyectos, path: 'necesidad'
  end

 post 'proyectos/registra'


  root 'home#index'
end
