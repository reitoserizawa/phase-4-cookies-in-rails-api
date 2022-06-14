class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "World"
    session[:session_yo] ||= "Yo"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
