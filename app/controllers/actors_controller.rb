class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list"})
  end

  def show
    id = params.fetch("id")
    matching_records = Actor.where({ :id => id })
    @actor = matching_records.at(0)
    render({ :template => "actor_templates/details"})
  end
end
