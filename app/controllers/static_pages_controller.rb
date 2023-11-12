class StaticPagesController < ApplicationController

  def haml_index
    register_page_type('Haml')
    render 'static_pages/haml/index'
  end

  def haml_example
    render 'static_pages/haml/example'
  end

  def slim_index
    register_page_type('Slim')
    render 'static_pages/slim/index'
  end

  def slim_example
    render 'static_pages/slim/example'
  end

  private

  def register_page_type(type)
    @type = type
  end
end
