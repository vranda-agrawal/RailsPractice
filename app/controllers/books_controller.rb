class BooksController < ApplicationController
  layout "book" ,except: [:index]
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
    render file: "#{Rails.root}/public/404.html",layout: true
  end

  #Avoiding double render error
  def show
    @book = {'key1':'value1','key2':'value2'}
    if !@book.empty?
      render action: "show" and return
    end
    render action: "default"
  end

  #here writing render means it will only render html page and will not make any new request
  # def edit
  #   @book = {'key1':'value1','key2':'value2'}
  #   if !@book.empty?
  #     render action: "show"
  #   end
  # end

  #here writing redirect means it will make a new request
  def edit
    @book = {'key1':'value1','key2':'value2'}
    if !@book.empty?
      redirect_to action: "index"
    end
  end
  private

  def determine_variant
    variant = :mobile 
  end
end
