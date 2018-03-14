class PagesController < ActionController::Base

  skip_before_action :authenticate_user!, raise: false

  def privacypolicy

  end
end