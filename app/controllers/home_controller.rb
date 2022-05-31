class HomeController < ApplicationController
  before_action :unauthenticated_user

  def index
  end
end
