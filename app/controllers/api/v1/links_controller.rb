class Api::V1::LinksController < ApplicationController

  def create
    link = Link.find_or_initialize_by(url: params[:link])
    link.count += 1
    if link.save
      render message: "Updated Hot Reads"
    else
      render status: 400
    end
  end

end
