class BasketBallPlayersController < ApplicationController

    def index
        @basket_ball_players = BasketBallPlayer.all
        render :index
    end

    def show
        @basket_ball_player = BasketBallPlayer.find(params[:id])
        render :show
    end 

    def edit
        @basket_ball_player = BasketBallPlayer.find(params[:id])
        render :edit
    end

    def new
        @basket_ball_player = BasketBallPlayer.new
        render :new
    end

    def update
        @basket_ball_player = BasketBallPlayer.find(params[:id])
        if @basket_ball_player.update(params.require(:basket_ball_player).permit(:first_name, :last_name, :position, :height_inches, :weight_lbs))
            flash[:success] = "Player successfully updated!"
            redirect_to basket_ball_player_url(@basket_ball_player)
        else
            flash.now[:error] = "Player update failed"
            render :edit, status: :unprocessable_entity
        end
    end

    def create
        @basket_ball_player = BasketBallPlayer.new(params.require(:basket_ball_player).permit(:first_name, :last_name, :position, :height_inches, :weight_lbs))
        if @basket_ball_player.save
            flash[:success] = "Player successfully created!"
            redirect_to basket_ball_player_url(@basket_ball_player)
        else
            flash.now[:error] = "Player creation failed"
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @basket_ball_player = BasketBallPlayer.find(params[:id])
        @basket_ball_player.destroy
        flash[:success] = "The Player record was successfully destroyed."
        redirect_to basket_ball_players_url
    end 

end
