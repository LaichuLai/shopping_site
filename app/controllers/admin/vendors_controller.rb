class Admin::VendorsController < Admin::BackshareController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      redirect_to admin_vendors_path, notice: '新增廠商成功'
    else
      render :new
    end
  end

  def edit 
    @vendor = Vendor.find(params[:id])
  end
  
  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to edit_admin_vendor_path(@vendor), notice: '更新成功'
    else
      render :edit
    end
  end



  private
    def vendor_params
      params.require(:vendor).permit(:title, :description, :online)
    end
end
