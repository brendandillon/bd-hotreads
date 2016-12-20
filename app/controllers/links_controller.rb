class LinksController < ApplicationController
  def create
    link = Link.where(link_params).first_or_create
    link.count += 1
    link.save
  end

  def index
    @links = Link.where("created_at > ?", Time.now - (24 * 60 * 60)).order(count: :desc).limit(10)
  end

  private
    def link_params
      params.permit(:title, :url)
    end
end

