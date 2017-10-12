class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :team]

  def home
    @client = Client.new
  end

  def team
  end
end
