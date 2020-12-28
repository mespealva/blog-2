class ApplicationController < ActionController::Base

  protected
  def after_sign_in_path_for(resource)
    current_author ? profile_path_url(current_author.slug): (stored_location_for(resource) || root_path)
  end
end
