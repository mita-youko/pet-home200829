class CatsController < ApplicationController
    before_action :search_cat, only: [:index, :search]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_cat, only: [:show, :edit, :update, :destroy]
    
    def index
        @cats = Cat.all.order(date: :asc)
    end

    def search
        @results = @q.result
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

    def show
    end

    def edit
    end

    def update
        if @cat.update(cat_params)
            redirect_to cat_path
        else
            render :edit
        end
    end

    def destroy
        redirect_to cats_path if @cat.destroy
    end


    private
    def search_cat
        @q = Cat.ransack(params[:q])
    end

    def cat_params
        params.require(:cat).permit(:image, :name, :year_id, :m_or_f_id, :cat_breed_id, :date, :description).merge(user_id: current_user.id)
    end

    def set_cat
        @cat = Cat.find(params[:id])
    end
end
