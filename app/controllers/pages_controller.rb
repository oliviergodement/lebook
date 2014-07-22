class PagesController < ApplicationController
  def index
  end

  def switch
    # Navigation.first: last click in the menu
    # Navigation.second: current page on the right screen
    @click_target = Page.find_by(name: params[:page_id]).id
    Navigation.first.update_attribute(:last_page_id, @click_target)
    if root_url == request.referrer
      redirect_to root_path
    else
      redirect_to pages_show_path
    end
  end

  def show
    @click_target = Navigation.first.last_page_id
    Navigation.second.update_attribute(:last_page_id, @click_target)
    @current_page = Page.find(Navigation.second.last_page_id)
    @page_name = @current_page.name

  end

  def check
    @last_click = Navigation.first.last_page_id
    @current_page = Navigation.second.last_page_id
    @last_click == @current_page ? @updated = "false" : @updated = "true"
    render :json => @updated
  end

end
