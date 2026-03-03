class LanguagesController < ApplicationController
  http_basic_authenticate_with name: "rafael", password: "rafoso123"

  def index
    @languages = Language.all
  end

  def show
    @languages = Language.find(params[:id])
  end
end
