class CharactersController < ApplicationController
    def index
        @characters = Character.all
    end
    def search
        @characters = Character.where("name LIKE ? ", "%"+params[:query]+"%").all
    end
    def show
        @character = Character.find(params[:id])
    end
    def new
        @character = Character.new
    end
    def create
        @character = Character.new(expected_params)
        if @character.save
            redirect_to @character
        else
            render :new
        end
    end
    def edit
    end
    def update
        if @character.update(expected_params)
            redirect_to @character
        else
            render :edit
        end
    end
    def destroy
        @character.destroy
        redirect_to characters_path
    end 
    private
        def expected_params
            params.expect(character: [ :name, :desc ])
        end
end