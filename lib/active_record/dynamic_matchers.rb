def highest_rating
  Show.maximum(:rating)
end
def most_popular_show
  highest_rating.title
end
def lowest_rating
  Show.minimum(:rating)
end
def least_popular_show
  lowest_rating.title
end
def ratings_sum
  Show.sum(:rating)
end
def popular_shows
  Show.where(":rating > 5") #or question mark notation?
end
def shows_by_alphabetical_order
  Show.order(name: :desc)
end
