class ApplicationController < ActionController::Base

    @@costume_types = ['shirt', 'pants', 'hat', 'skirt', 'bodice', 'shoes', 'coat', 'vest', 'muskrat' ]
    @@costume_eras = ['Greek & Roman', 'Medieval', 'Armor', 'Asian', 'Victorian', 'Elizabethan', 'Early 20th century', 'Mid 20th century','Modern casual','Modern formal', 'Fantasy' ]
    @@costume_materials = ['cotton', 'paper mache', 'polyester', 'hemp', 'muslin', 'wool', 'thule', 'lycra',  ]

    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?


    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def authorized
        redirect_to '/welcome' unless logged_in?
    end
end
