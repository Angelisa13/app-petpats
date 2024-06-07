class ProductsController < ApplicationController

  def index
    @products = Product.all
    respond_to do |format|
      format.html
      
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Se ha creado el producto correctamente.'
    else
      flash[:notice] = 'Ha ocurrido un error al crear el producto.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: 'Se actualizó el producto correctamente'
    else
      render :edit
    end
  end

  
 

  private
  def product_params
    params.require(:product).permit(:name, :description, :reference, :amount)
  end

  

end