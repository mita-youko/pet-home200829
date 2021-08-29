class DogsController < ApplicationController
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

    private
    
    def dog_params
        params.require(:dog).permit(:image, :name, :year_id, :m_or_f_id, :size_id, :dog_breed_id, :date, :description).merge(user_id: current_user.id)
    end
end