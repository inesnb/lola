class ClientsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    email = params[:client][:email]
    @client = Client.new(email: email)
    if @client.save
      redirect_to team_path
    else
      render 'pages/home'
    end
  end

end


