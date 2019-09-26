class ReviewsController <  ApplicationController
before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @reviews = Review.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @review = Review.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create


	@ad_review = current_user.reviews.new(review_text: params[:review_text],ad_id: params[:ad_id])
	 
	     @ad_review.save
		    respond_to do |format|
		    format.js{}
			end 



  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    begin
       @review.destroy
        respond_to do |format|
          format.html { redirect_to courses_url, notice: 'review was successfully destroyed.' }
          format.json { head :no_content }
        end
    rescue Exception => e
      flash[:error] = e.message 
      render :file => "/public/404.html",  :status => 404, :layout => false
    end
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end



 

    def review_params
      params.require(:review).permit(:review_text, :user_id, :ad_id)
    end

end
