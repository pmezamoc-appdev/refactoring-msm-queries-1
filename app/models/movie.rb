# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def the_director
    d_id = self.director_id

    matching_directors = Director.where({:id => d_id })
    return matching_directors.at(0)
  end 

  def characters
    the_id = self.id

    characters = Character.where({:movie_id => the_id})
    return characters
  end

  def director
    the_id = self.director_id

    director = Director.where({:id => the_id})
    return director
  end
end
