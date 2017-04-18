class DogsController < ActionController::Base
  def index
    page = params[:page].to_i
    page_size = params[:size].nil? ? 20 : params[:size].to_i
    page_offset = page * page_size

    @total_elements = Dog.count
    @dogs = Dog.limit(page_size).offset(page_offset)

    render json: {
      content: @dogs,
      pagination: {
        current_page: page,
        size: page_size,
        total_elements: Dog.count,
        total_pages: (@total_elements.to_f / page_size).ceil
      }
    }
  end

  def show
    @dog = Dog.find(params[:id])
    render json: @dog.to_json(include: :owner)
  end
end
