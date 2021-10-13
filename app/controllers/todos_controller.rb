class TodosController < ApplicationController
  def index
    #render plain:"Hello to Rails! #{DateTime.now.to_s(:short)}"
     render plain: Todo.all.map{|todo| todo.to_pleasant_string}.join("\n")
  end
  def show
    id=params[:id]
    todo=Todo.find(id)
    #render plain:"The id you entered was #{id}"
    render plain:todo.to_pleasant_string
  end
end
