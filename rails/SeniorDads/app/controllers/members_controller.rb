class MembersController < DadminsController
  before_filter :authenticate_user!, except: [:default, :faq]
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @members = Member.all
    respond_with(@members)
  end
  
  def default
    @members = Member.all
    render :layout => "application"
  end
  
  def faq 
    render :layout => "application"
  end

  def show
    respond_with(@member)
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def edit
    @categories = Category.where( parent_category_id: Category.where( name: "member" ).first.id )
  end

  def create
    @member = Member.new(member_params)
    @member.save
    respond_with(@member)
  end

  def update
    @member.update(member_params)
    respond_with(@member)
  end

  def destroy
    @member.destroy
    respond_with(@member)
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :title, :joined, :join_reason, :function, :first_computer, :any_other_comments, :gallery_id, :category_id, :order)
    end
end
