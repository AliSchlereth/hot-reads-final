class Api::V1::LinksController < ApplicationController
  protect_from_forgery  with: :null_session

  def create
    link = Link.find_or_initialize_by(url: params[:link])
    link.count += 1
    if link.save
      hot_reads = Link.top_ten
      render json: {message: "Updated Hot Reads", current_hot_reads: hot_reads}
    else
      render status: 400
    end
  end

end
