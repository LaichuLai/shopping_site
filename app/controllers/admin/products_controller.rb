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
  end

  def update
  end

  def destory
  end

  private
  
  def product_params
    params.require(:product).permit(:name, :vendor_id, :list_price, :sell_price)
  end
end
