class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    id = params.fetch("id")
    matching_records = Director.where({ :id => id })
    @director = matching_records.at(0)
    render({ :template => "director_templates/details"})
  end

  def junior
    @director = Director.where.not(dob: nil).order(dob: :desc).first
    # @director = director.at(0)
    render(template: "director_templates/youngest")
  end

  def senior
    @director = Director.where.not(dob: nil).order(dob: :asc).first
    # @director = director.at(0)
    render(template: "director_templates/oldest")
  end
end
