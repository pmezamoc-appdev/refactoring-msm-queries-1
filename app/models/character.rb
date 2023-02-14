# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def the_movies
    the_id = self.movie_id

    movies = Movie.where({:id => the_id})
    return movies.at(0)
  end

  def actor
    the_id = self.actor_id

    actor = Actor.where({:id => the_id})
    return actor.at(0)
  end

  def movie 
    the_id = self.movie_id

    movie = Movie.where({:id => the_id}).first
    return movie
  end
end
