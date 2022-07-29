class ShowsController < ApplicationController

  include ShowsHelper

  def index
    @shows = Show.all.take(20)
  end
end

