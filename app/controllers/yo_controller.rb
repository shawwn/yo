class YoController < ApplicationController

  def index
    @name = params[:name] if params.key?(:name)

    respond_to do |format|
      format.html { render }
      format.json {
        message = @name.nil? ? "yo" : "yo #{@name}"
        render json: {
          code: 200,
          status: "ok",
          message: message
        }.to_json
      }
    end
  end
end
