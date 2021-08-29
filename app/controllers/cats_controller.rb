class CatsController < ApplicationController
    def index
        @cats = Cat.all.order(date: :asc)
    end

    def new
        @cat = Cat.new
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cats_path
        else
           render :new 
        end
    end

    private

    def cat_params
        params.require(:cat).permit(:image, :name, :year_id, :m_or_f_id, :cat_breed_id, :date, :description).merge(user_id: current_user.id)
    end
end
