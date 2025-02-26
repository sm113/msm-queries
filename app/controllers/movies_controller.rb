class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list" })
  end

  def show
    id = params.fetch("id")
    matching_records = Movie.where({ :id => id })
    @movie = matching_records.at(0)
    render({ :template => "movie_templates/details"})
  end
end
