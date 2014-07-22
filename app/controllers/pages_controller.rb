class PagesController < ApplicationController
  def index
  end

  def switch
    @target = Page.find_by(name: params[:page_id]).id
    if Navigation.first
      @previous = Page.find(Navigation.first.last_page_id).name
      Navigation.first.update_attribute(:last_page_id, @target)
    else
      Navigation.create(last_page_id: @target)
    end
    @last = Page.find(Navigation.first.last_page_id).name
    redirect_to root_path
  end

  def show
    @last = Page.find(Navigation.first.last_page_id).name


  end
end
