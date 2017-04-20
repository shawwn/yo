class YoController < ApplicationController
  def index
    l = ["yo"]
    l.push(params[:name]) if params.key?(:name)

    respond_to do |format|
      format.json { render json: { response: "ok", message: l.join(" ").to_json }.to_json }
      format.html { render html: l.join(" ") }
    end
  end
end
