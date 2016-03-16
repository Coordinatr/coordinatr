class SessionsController < ApplicationController
  def create
    render json: request.env['omniauth.auth'].to_json
  end

  def new
  end

  def destroy
  end
end
