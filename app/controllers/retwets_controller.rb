class RetwetsController < ApplicationController
 # All actions in this controller require the presence of an authenticated user.
  before_filter :authenticate_user!

  def create
    @retwet = current_user.retwets.create(retwet_params)
    if @retwet.valid? and @retwet.persisted?
      flash[:success] = "Your sucessfully retwat that twet: #{@retwet.twet.content}"
    else
      get_twets
      flash[:error] = "Your retwet could not be saved"
    end
    smart_return
  end

  def index
    @retwets = Retwet.all
  end

  def destroy
    @retwet.destroy
    respond_with(@retwet)
  end

  private
    def set_retwet
      @retwet = Retwet.find(params[:id])
    end

    def retwet_params
      params.require(:retwet).permit(:user_id, :twet_id)
    end

    # Leverages the params[:return_to] value to direct the user back to a requested
    # page. If no value is present, the user is directed back to the root path.
    #
    def smart_return
      if params[:return_to].present?
        redirect_to params[:return_to]
      else
        redirect_to root_path
      end
    end
end
