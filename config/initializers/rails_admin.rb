RailsAdmin.config do |config|
  config.main_app_name = ["Blog"]
  config.included_models = ['Category','Comment','Post']
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
   warden.authenticate! scope: :user
 end
 config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    #show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Post do
    edit do
      field :name
      field :content, :ck_editor
      field :file
      field :categories
    end
    list do
      field :name
      field :content
      field :file
      field :comments_count
    end
    show do
      field :name
      field :content
      field :comments_count
    end

  end

  config.model Category do
    edit do
      field :name
      field :description
    end
    list do
      field :name
      field :description
      field :comments_count
      field :created_at
    end
    show do
      field :name
      field :description
      field :comments_count
      field :created_at
    end
  end

  config.model Comment do
    edit do
      field :author
      field :content
    end
    list do
      field :author
      field :content
      field :created_at
      field :commentable
    end
    show do
      field :author
      field :content
      field :created_at
      field :commentable
    end
  end


end
