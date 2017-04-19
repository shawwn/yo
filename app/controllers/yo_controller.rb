class YoController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: '"yo"' }
      format.html { render html: "yo" }
    end
  end
end
