class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception, unless: -> { request.path.start_with?('/proyecto/') }
end
