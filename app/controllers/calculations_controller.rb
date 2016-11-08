class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:id].to_i
    @square = @number**2
  end

  def square_root
    @number = params[:id].to_i
    @squareroot = (@number**(0.5)).round(2)
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random = rand(@min..@max)
  end

  def payment
    @aprbasis = params[:ir].to_f
    @years = params[:noy].to_i
    @principal = params[:pv].to_i

    @apr = @aprbasis/100

    @rate = @apr/12/100
    @periods = @years*12

    @payment = '%.2f' % [@principal*(@rate/(1-(1+@rate)**(-@periods)))]
  end
end
