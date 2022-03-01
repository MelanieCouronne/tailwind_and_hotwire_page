class StoriesController < ApplicationController
  def index
    @stories = Story.order(:universe_name)
    display_univers
  end

  def preview
    @story = Story.find(params[:id])
  end

  private

  def display_univers
    @selected_la_foret_enchantee = @stories.select { |story| story.universe_name == 'La forêt enchantée' }
    @selected_la_chaumière_perdue = @stories.select { |story| story.universe_name == 'La chaumière perdue' }
    @selected_ile_mysterieuse = @stories.select { |story| story.universe_name == 'La chaumière perdue' }
    @selected_le_palais_merveilleux = @stories.select { |story| story.universe_name == 'La chaumière perdue' }
    @selected_le_desert_des_mirages = @stories.select { |story| story.universe_name == 'Le désert des mirages' }
  end
end
