class StoriesController < ApplicationController
  def index
    @stories = Story.order(:universe_name)
    select_by_universe
  end

  def preview
    @story = Story.find(params[:id])
  end

  private

  def select_by_universe
    @selectedLaForetEnchantee = @stories.select { |story| story.universe_name == "La forêt enchantée" }
    @selectedLaChaumièrePerdue = @stories.select { |story| story.universe_name == "La chaumière perdue" }
    @selectedIleMysterieuse = @stories.select { |story| story.universe_name == "L'île mystérieuse" }
    @selectedLePalaisMerveilleux = @stories.select { |story| story.universe_name == "Le palais merveilleux" }
    @selectedLeDesertDesMirages = @stories.select { |story| story.universe_name == "Le désert des mirages" }
  end
end
