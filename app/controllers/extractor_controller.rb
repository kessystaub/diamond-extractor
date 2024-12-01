class ExtractorController < ApplicationController
  def extract
    expression = params[:expression]
    diamonds_count = count_diamonds(expression)

    render json: { diamonds: diamonds_count }
  end

  private

  def count_diamonds(expression)
    diamond_count = 0
    open_diamonds = []

    expression.chars.each do |character|
      if character == "<"
        open_diamonds.push(character)
      elsif character == ">" && open_diamonds.last == "<"
        open_diamonds.pop
        diamond_count += 1
      end
    end

    diamond_count
  end
end
