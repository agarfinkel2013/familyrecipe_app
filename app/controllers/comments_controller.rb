class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by_id(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.recipe_id = params[:recipe_id]
    @comment.user_id = params[:user_id]
    @comment.notes = params[:notes]
    
    if @comment.save
      redirect_to comments_url
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find_by_id(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    @comment.recipe_id = params[:recipe_id]
    @comment.user_id = params[:user_id]
    @comment.notes = params[:notes]
    
    if @comment.save
      redirect_to comments_url
    else
      render 'new'
    end
  end

  def destroy
    @comment = Comment.find_by_id(params[:id])
    @comment.destroy
    redirect_to comments_url
  end
end
