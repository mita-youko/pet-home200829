class DogsController < ApplicationController
    before_action :search_dog, only: [:index, :search]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_dog, only: [:show, :edit, :update, :destroy]

    def index
        @dogs = Dog.all.order(date: :asc)
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            redirect_to dogs_path
        else
            render :new
        end
    end

    def search
        @results = @q.result
    end

    def show
    end

    def edit
    end

    def update
        if @dog.update(dog_params)
            redirect_to dog_path
        else
            render :edit
        end
    end

    def destroy
        redirect_to dogs_path if @dog.destroy
    end

    private

    def search_dog
        @q = Dog.ransack(params[:q])
    end
    
    def dog_params
        params.require(:dog).permit(:image, :name, :year_id, :m_or_f_id, :size_id, :dog_breed_id, :date, :description).merge(user_id: current_user.id)
    end

    def set_dog
        @dog = Dog.find(params[:id])
    end


end
