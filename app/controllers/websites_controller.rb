class WebsitesController < ApplicationController
  def create
    url = params["website"]["url"]

    website = Website.new()
    website.url = url
    website.hashcode = SecureRandom.hex(1)
    website.save()

    redirect_to "/"
  end

  def redirect
    url = Website.where(hashcode: params[:hashcode]).first.url
    redirect_to url
  end
end