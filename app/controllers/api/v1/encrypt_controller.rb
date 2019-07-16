class Api::V1::EncryptController < ApplicationController
  def index
    render json: MessageSerializer.new(message)
    # render :json => {error: "Unauthorized"}, status: 403
  end
end
