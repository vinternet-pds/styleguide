Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: 'styleguide#index'
  root to: 'components#header'

  #    HTTP verb 'Path',      'Controller#Action',    'Path'
  get '/components', to: redirect('/components/header', status: 302)
  components = %w(a_z alert badges banners breadcrumb footer header pagination)
  components.each do |page|
    get 'components/' + page, controller: 'components', action: page
  end

  get '/design', to: redirect('/design/colours', status: 302)
  colours = %w(colours typography)
  colours.each do |page|
    get 'design/' + page, controller: 'design', action: page
  end

  get '/elements', to: redirect('/elements/forms', status: 302)
  elements = %w(forms media lists table)
  elements.each do |page|
    get 'elements/' + page, controller: 'elements', action: page
  end

  get '/templates', to: redirect('/templates/member_profile_hoc', status: 302)
  templates = %w(member_profile_hoc member_profile_hol member_search_results)
  templates.each do |page|
    get 'templates/' + page, controller: 'templates', action: page
  end

end
