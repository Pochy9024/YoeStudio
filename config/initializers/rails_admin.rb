RailsAdmin.config do |config|



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

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new

    bulk_delete
    show
    edit
    delete
    show_in_app

    ## user config for model
    config.model 'User' do
      exclude_fields :encrypted_password, :created_at, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip

    end

    ## painting config for model
    config.included_models = config.models_pool + %W(Painting::Translation)

    config.model 'Painting' do

      configure :translations, :globalize_tabs
      exclude_fields :technic

      update do
        exclude_fields :position
      end

    end

    config.model 'Painting::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :technic
    end

    ## sculture config for model
    config.included_models = config.models_pool + %W(Sculture::Translation)

    config.model 'Sculture' do
      configure :translations, :globalize_tabs
      exclude_fields :technic

      update do
        exclude_fields :position
      end

    end

    config.model 'Sculture::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :technic
    end

    ## draw config for model
    config.included_models = config.models_pool + %W(Draw::Translation)

    config.model 'Draw' do
      configure :translations, :globalize_tabs
      exclude_fields :technic

      update do
        exclude_fields :position
      end

    end

    config.model 'Draw::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :technic
    end

    ## photo config for model
    config.included_models = config.models_pool + %W(Photograph::Translation)

    config.model 'Photograph' do
      configure :translations, :globalize_tabs
      exclude_fields :technic

      update do
        exclude_fields :position
      end

    end

    config.model 'Photograph::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :technic
    end

    ## design config for model
    config.included_models = config.models_pool + %W(Design::Translation)

    config.model 'Design' do
      configure :translations, :globalize_tabs
      exclude_fields :technic

      update do
        exclude_fields :position
      end

    end

    config.model 'Design::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :technic
    end

    ## slide config for model
    config.included_models = config.models_pool + %W(Slide::Translation)

    config.model 'Slide' do
      configure :translations, :globalize_tabs
      exclude_fields :title, :text

    end

    config.model 'Slide::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :title, :text
    end

    ## testimonial config for model
    config.included_models = config.models_pool + %W(Testimonial::Translation)

    config.model 'Testimonial' do
      configure :translations, :globalize_tabs
      exclude_fields :title, :text

    end

    config.model 'Testimonial::Translation' do
      visible false
      configure :locale, :hidden do
        help ''
      end
      include_fields :locale, :title, :text
    end


    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
