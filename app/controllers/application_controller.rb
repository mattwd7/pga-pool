class ApplicationController < ActionController::Base
  def after_sign_in_path_for(user)
    root_path
  end
end
