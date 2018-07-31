class SearchesController < ApplicationController
  def show
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "36LXFREo2t29U54LGkw"
      config.consumer_secret     = "WuOWDFdG2AB6nMFSv0rKKui0XtR0yAK1Gg089XG9EM"
    end
    search_user_handle = "@#{params[:search][:user_handle]}"
    @followers_count = @client.user(search_user_handle).followers_count
    @tweets = @client.search(search_user_handle, result_type: 'popular')
  end
end
