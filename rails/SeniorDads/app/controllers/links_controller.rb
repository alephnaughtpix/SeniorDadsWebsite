class LinksController < DadminsController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @links = Link.all
    respond_with(@links)
  end
  
  def category
    @links = Link.where( "category_id" => params[:id]  )
    @category = Category.find(params[:id])
    @breadcrumb = breadcrumbs( @category.id )
    respond_with(@links)
  end

  def show
    respond_with(@link)
  end

  def new
    @link = Link.new
    respond_with(@link)
  end

  def edit
  end

  def create
    @link = Link.new(link_params)
    @link.save
    respond_with(@link)
  end

  def update
    @link.update(link_params)
    respond_with(@link)
  end

  def destroy
    @link.destroy
    respond_with(@link)
  end

  private
    def set_link
      @link = Link.find(params[:id])
    end

    def link_params
      params.require(:link).permit(:name, :title, :url, :description, :category_id)
    end
    
    def breadcrumbs( category_id )
      crumbtrail = ""
      category_list = []
      current_category = Category.find(category_id)
      category_list.unshift( current_category.title )
      while (!current_category.parent_category_id.nil?)
        current_category = Category.find(current_category.parent_category_id)
        category_list.unshift( "<a href=\"/links/category/#{current_category.id}\">#{current_category.title}</a>")
      end
      category_list.unshift( "<a href=\"/links/\">Root</a>")
      crumbtrail = category_list.join(' &gt; ')
      crumbtrail
    end
    
end
