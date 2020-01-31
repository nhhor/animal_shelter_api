class AnimalsController < ApplicationController

  def index
    @animals = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@animals)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
