class Api::V1::EncryptController < ApplicationController
  def index
    message = Encrypted.new(params[:message], params[:key])
    render json: MessageSerializer.new(message)
    # render :json => {error: "Unauthorized"}, status: 403 Add secuirty of some sort? Would entail users?
  end
end
