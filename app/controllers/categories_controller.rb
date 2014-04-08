class CategoriesController < ApplicationController
  
  def index
  	@categories = Category.all
  end

  def new
	@category = Category.new
  end

  def create
	@category = Category.new(params[:category])
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end

  end

	def show
		@category = Category.find(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def delete
		
	end

end
