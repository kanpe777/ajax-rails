class StaticPagesController < ApplicationController
  def index
    @dates = MyDate.all
  end

  def add
    date = Time.now.to_s
    MyDate.create(org_value: date)
    redirect_to action: :index
  end

  def destroy
    MyDate.find(params[:id]).delete
    redirect_to action: :index
  end

  def clear
    MyDate.delete_all
    redirect_to action: :index
  end
end
