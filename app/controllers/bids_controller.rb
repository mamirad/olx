class BidsController < ApplicationController
  before_action :authenticate_user!
before_action :set_bid, only: [:show, :edit, :update, :destroy, :approve_bid]

  def index
 
  end
  def approve_bid
    @bid.status = true
    if @bid.save
      redirect_to :back

    else
      flash[:notice] = "some error while approved bid"
      redirect_to :back

    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  @ad_bids = Ad.find(params[:id]).bids

  end

  # GET /courses/new
  def new
  
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create


	@bid = current_user.bids.new(price: params[:bid_price],ad_id: params[:ad_id])
	 
	    if @bid.save
		    respond_to do |format|
		    format.js{}
			end 
		else
			flash[:notice]= @bid.errors.first

		end



  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    # respond_to do |format|
    #   if @review.update(review_params)
    #     format.html { redirect_to @review, notice: 'review was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @review }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @review.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    # begin
    #    @review.destroy
    #     respond_to do |format|
    #       format.html { redirect_to courses_url, notice: 'review was successfully destroyed.' }
    #       format.json { head :no_content }
    #     end
    # rescue Exception => e
    #   flash[:error] = e.message 
    #   render :file => "/public/404.html",  :status => 404, :layout => false
    # end
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end



 
    def bid_params
      params.require(:bid).permit(:price, :ad_id, :user_id, :status)
    end

end
