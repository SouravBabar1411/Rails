class DemoController < ApplicationController
  def index
    render('hello')
  end
  def hello
    @ar=[1,2,3,4,5]
    #render('index')
  end
end
