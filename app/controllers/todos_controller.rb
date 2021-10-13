class TodosController < ApplicationController
  def index
    #render plain:"Hello to Rails! #{DateTime.now.to_s(:short)}"
     render plain: Todo.all.to_a
  end
end
