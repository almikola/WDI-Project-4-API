class RestaurantController < ApplicationController

  def get_restaurant

    headers = {
      "Accept" => "application/json",
      "user-key" => "d8a379575db4bfedc9c173a595ff57b3"
    }

    url = "https://developers.zomato.com/api/v2.1/search?lat=#{params[:latitude]}&lon=#{params[:longitude]}&radius=300&sort=rating"

    zomato_restaurants = HTTParty.get(url, :headers => headers)

    render json: zomato_restaurants

  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:longitude, :latitude)
  end
end
