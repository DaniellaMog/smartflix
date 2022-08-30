class ShowsController < ApplicationController

  def index
    @shows = Show.all.take(20)
  end
end

