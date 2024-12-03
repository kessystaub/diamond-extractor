class ExtractorController < ApplicationController
  def extract
    expression = params[:expression]
    diamonds_count = expression.present? ? count_diamonds(expression) : 0

    render json: { message: "Quantidade de diamantes extraídos: #{diamonds_count}" }
  end

  private

  def count_diamonds(expression, diamond_count = 0)
    new_expression = expression.gsub(/<>/) do
      diamond_count += 1
      ""
    end

    new_expression.gsub!(/\./, "")

    return diamond_count if new_expression == expression

    count_diamonds(new_expression, diamond_count)
  end
end
