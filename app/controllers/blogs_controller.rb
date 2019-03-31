class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "ブログを削除しました"
  end

  def edit

  end

  private

  def set_blog
  @blog = Blog.find(params[:id])
  end
end
