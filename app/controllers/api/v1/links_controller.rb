class Api::V1::LinksController < ApplicationController

  def create
    link = Link.find_or_initialize_by(url: params[:link])
    if link.save
      link.count += 1
      render json: {message: "Updated Hot Reads"}
    else
      render status: 400
    end
  end

end
