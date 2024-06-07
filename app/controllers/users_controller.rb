class UsersController < ApplicationController
    def index
        @users = User.all
        respond_to do |format|
          format.html
        end
      end
    
      def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          redirect_to @user, notice: 'Se ha creado el usuario correctamente.'
          redirect_to inicio_proyecto_path, notice: 'Usuario creado correctamente'
        else
          flash[:notice] = 'Ha ocurrido un error al crear el usuario'
          render :new, status: :unprocessable_entity
           render 'proyecto/sesion', notice: 'Error al crear el usuario'
        end
      end
    
      def show
        @user = User.find(params[:id])
        respond_to do |format|
          format.html
        end
      end
    
      def edit
        @user = User.find(params[:id])
      end
    
      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          redirect_to @user, notice: 'Se actualizó el producto correctamente'
        else
          render :edit
        end
      end
    
      
     
    
      private
      def user_params
        params.require(:user).permit(:nombre, :apellidos, :contra, :telefono, :privilegio)
      end
    
      
    
end

