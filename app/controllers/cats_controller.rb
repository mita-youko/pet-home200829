class CatsController < ApplicationController
    ef index
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
end
