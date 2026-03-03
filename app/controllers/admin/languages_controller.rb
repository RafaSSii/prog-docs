class Admin::LanguagesController < ApplicationController
  before_action :authenticate_user!
end
