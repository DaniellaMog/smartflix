class ShowsController < ApplicationController

  include ShowsHelper

  def index
    @shows = get_csv_data.take(20)
  end
end
