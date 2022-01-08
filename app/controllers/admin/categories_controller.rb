class Admin::CategoriesController < Admin::BackshareController
  before_action :set_catrgory, only: [:edit, :update, :destroy]
  def index
    @categories = Category.all.order(position: :asc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to admin_categories_path, notice: "新增分類成功"
    else 
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: "修改分類成功"
    else 
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_path, notice: "分類刪除成功"
  end


  private
  def category_params
    params.require(:category).permit(:name)
  end

  def set_catrgory
    @category = Category.find(params[:id])
  end
  
end
