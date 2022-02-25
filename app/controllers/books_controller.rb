class BooksController < ApplicationController
  def index
    puts "-----------------------inside index-------------------"
    render variants: determine_variant
  end

  def demo
    @product={'key1':'value1','key2':'value2'}
    puts @product.class
    render xml: @product
  end

  def file
    render file: "#{Rails.root}/public/404.html",layout: false
  end
  private

  def determine_variant
    variant = :mobile 
  end
end
