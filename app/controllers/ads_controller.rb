class AdsController <  ApplicationController
  before_action :authenticate_user!
before_action :set_ad, only: [:show, :edit, :update, :destroy]

  def index
    @ads = current_user.ads.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @ad = Ad.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @ad = current_user.ads.new(ad_params)
    @ad.pictures.new(picture_name:params[:ad][:picture_name])

    respond_to do |format|
      if @ad.save

       
        format.html { redirect_to @ad, notice: 'ad was successfully created.' }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html { render :new }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to @ad, notice: 'ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render :edit }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    begin
       @ad.destroy
        respond_to do |format|
          format.html { redirect_to courses_url, notice: 'ad was successfully destroyed.' }
          format.json { head :no_content }
        end
    rescue Exception => e
      flash[:error] = e.message 
      render :file => "/public/404.html",  :status => 404, :layout => false
    end
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end



    def ad_params
      params.require(:ad).permit(:title, :category_id, :sub_category_id, :user_id, :condition, :detail, :city, :address, :published, :contact, :price)
    end

end
