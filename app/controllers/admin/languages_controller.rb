class Admin::LanguagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)

    if @language.save
      redirect_to languages_path, notice: "Linguagem criada com sucesso!"
    else
      render :new
    end
  end

  private

  def language_params
    params.require(:language).permit(
      :title,
      :description,
      :documentation_link,
      :documentation_file
    )
  end
end