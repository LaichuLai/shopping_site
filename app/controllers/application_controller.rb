class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :cannot_find_item



  private
  def cannot_find_item
    render file: "#{Rails.root}/public/404.html",
           layout: false,
           status: 404
  end
end
