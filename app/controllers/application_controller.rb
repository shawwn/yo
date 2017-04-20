class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from StandardError do |exception|
      render json: {
        code: 500,
        status: "error",
        error: Rails.env.development? ? exception.message : "Internal error"
      }, :status => 500
  end
end
