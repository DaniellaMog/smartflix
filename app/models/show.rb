class Show < ApplicationRecord
  enum show_type: {
    movie: 0,
    tv_show: 1
  }
end
