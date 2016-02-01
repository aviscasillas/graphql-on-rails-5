class StatusesController < ApplicationController
  def index
    render json: { data: 'ok' }
  end
end
