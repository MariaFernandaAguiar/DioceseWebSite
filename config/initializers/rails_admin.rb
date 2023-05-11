RailsAdmin.config do |config|
  config.asset_source = :sprockets

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    config.model "Slider" do # Nome da modelo letras captalizadas
      navigation_label "Slider" # nome que vai aparecer no sidebar do rails admin
      list do # Os campos que vai mostrar nas lista de sliders
         field :title
         field :body
      end
      edit do # Os campos que vai aparecer quando criar ou editar um slider
          field :title
          field :body
          field :SliderImg # Field de has_many silder_images
      end
    end

    config.model "SliderImg" do # Nome da modelo letras captalizadas
      visible :false 
      edit do 
        field :url
      end
    end

    config.model "Article" do # Nome da modelo letras captalizadas
      navigation_label "Article" # nome que vai aparecer no sidebar do rails admin
      list do # Os campos que vai mostrar nas lista de sliders
         field :title
         field :body
      end
      edit do # Os campos que vai aparecer quando criar ou editar um slider
          field :title
          field :body
          field :url # Field de has_many silder_images
      end
    end

    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
