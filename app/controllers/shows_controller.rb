include ShowsHelper

class ShowsController < ApplicationController
  def index
    @shows = get_csv_data.take(20)
  end
end
