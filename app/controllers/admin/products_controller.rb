class Admin::ProductsController < Admin::BackshareController

  def index
    @products = Product.all.includes(:vendor)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path, notice: "新增成功"
    else
      render :new
    end
  end

  def edit
    @product = Product.friendly.find(params[:id])
  end

  def update
    @product = Product.friendly.find(params[:id])
      if @product.update(product_params)
        redirect_to admin_products_path(@product), notice: "修改成功"
      else 
        render :edit
      end
  end

  def destroy
    @product = Product.friendly.find(params[:id])
    @product.destroy
    redirect_to admin_products_path(@product), notice: "刪除成功"
  end

  private
  
  def product_params
    params.require(:product).permit(:name, :vendor_id, :list_price, :sell_price,:is_selling, :description)
  end
end
