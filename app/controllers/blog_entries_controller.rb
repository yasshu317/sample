class BlogEntriesController < ApplicationController
  def index
    @blog_entries = BlogEntry.yash
  end

  def show
    @blog_entry = BlogEntry.find(params[:id])
  end

  def new
    @blog_entry = BlogEntry.new
    @categories = Category.all
  end

  def create
    @blog_entry = BlogEntry.new(params[:blog_entry])

    if params['category_ids'].present?
        params['category_ids'].each do |category_id|
        @blog_entry_category = @blog_entry.blog_entry_categories.build(:category_id => category_id)
        @blog_entry_category.save
      end 
    end

    respond_to do |format|
      if @blog_entry.save
        format.html { redirect_to @blog_entry, notice: 'Blog Entry was successfully updated.' }
        format.json { render json: @blog_entry, status: :created, location: @blog_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @blog_entry = BlogEntry.find(params[:id])
    @blog_entry.destroy

    respond_to do |format|
      format.html { redirect_to blog_entries_url }
      format.json { head :no_content }
    end
  end

end
