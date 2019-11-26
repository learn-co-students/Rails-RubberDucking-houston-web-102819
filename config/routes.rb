Rails.application.routes.draw do
  resources :ducks, only: [:index]
  resources :students, only: [:index]

  #get('/students',{to: 'students#index'})
  
  get('students/new', {to: 'students#new'})
  
  get('students/:id', {to: 'students#show'})
  
  post('students/new', {to: 'students#new'})

  get('students/:id/edit', {to: 'students#edit'})

  post('students/:id/edit', {to: 'students#edit'})

end