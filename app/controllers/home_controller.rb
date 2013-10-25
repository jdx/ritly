class HomeController < ApplicationController
  def index
    @website = Website.new
    @urls = Website.all
  end
end