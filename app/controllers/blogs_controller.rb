class BlogsController < ApplicationController
	def home
	end

	def about

	end

	def new
		@blog = Blog.new

	end

	def create
		@blog = Blog.new(blogs_params)
		if @blog.save
			flash[:success] = "new blog is succesfully created"
			redirect_to blog_path(@blog)
		else
			render 'new'
		end
	end

	def show
		@blog = Blog.find(params[:id])

	end


	def edit
		@blog = Blog.find(params[:id])
	end

	def update 
		@blog = Blog.find(params[:id])

		if @blog.update(blogs_params)
			flash[:success] = "new blog is succesfully updated"
			redirect_to blog_path(@blog)
		else
			render 'edit'
		end
	end

	def index
		@blogs = Blog.all

	end


	def destroy
		@blog = Blog.find(params[:id])
		if @blog.destroy
			flash[:danger] = "new blog is succesfully deleted"
			redirect_to blogs_path
		else
			render 'index'
		end


	end





	private
	  def blogs_params
	  	params.require(:blog).permit(:title, :description)
      end



end