class BlogsController < ApplicationController
#記事を全件取得（topページ）
  def index
  	@blogs = Blog.all
  end

  def show
  end
#空のインスタンス変数をViewに渡す。
  def new
  	@blog = Blog.new
  end
#
  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end


  def edit
  end
 # -----------------------------------
 private

 def blog_params
 	params.require(:blog).permit(:title, :category, :body)
 end
end
