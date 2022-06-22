class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(boards_params)

  if @board.save
    redirect_to @board, notice:'掲示板が作成されました。'
  else
    render :new
  end
end

  def update
    @board = Board.find(params[:id])

  if @board.update(boards_params)
    redirect_to @board, notice: 'Board was successfully update'
  else
    render :edit
  end
end

  def destroy
    @board = Board.find(params[:id])

    @board.destroy
    redirect_to boards_url, notice: 'Board was successfully destroyed'
  end


private

def boards_params
  params.require(:board).permit(:title, :body)
end
end
