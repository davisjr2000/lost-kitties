class RobertosController < ApplicationController
  def barros
    @quote = RobertoBarros.quote
    # Best gem ever, right?
  end
end
