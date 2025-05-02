class WorksController < ApplicationController
  layout "parent_slide"

  def index
    render layout: "parent_interlude"
  end

  def donedone
  end

  def dnsdigest
  end

  def baseball_scoreboards
  end

  def naming_things
  end

  def meetle
  end

  def communications
  end

  def basecamp
    @hide_nav = true
    @custom_article_class = "design-exercise"
  end
end
