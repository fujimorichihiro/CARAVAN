class BlogsController < ApplicationController
#記事を全件取得（topページ）
  def index
  	@blogs = Blog.all
  end

  def show
  	@blog = Blog.find(params[:id])
  end
#空のインスタンス変数をViewに渡す。
  def new
  	@blog = Blog.new
  end
#
  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path(blog.id) #投稿後、詳細ページへ遷移
  end
  
  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blogs_path(blog.id)
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end
 # -----------------------------------
 private

 def blog_params
 	params.require(:blog).permit(:title, :category, :body)
 end
end
