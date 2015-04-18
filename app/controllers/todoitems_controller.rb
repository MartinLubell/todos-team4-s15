class TodoitemsController < ApplicationController
  before_action :set_todolist, only: [:create, :destroy]

  def create
    @todoitem = @todolist.todoitems.new(todolist_params)
    if @todoitem.save
      redirect_to @todolist, notice: "Todoitem successfully added!"
    else
      redirect_to @todolist, alert: "Unable to add Todoitem!"
    end
  end

  def destroy
    @todoitem = @todolist.todoitems.find(params[:id])
    @todoitem.destroy
    redirect_to @todolist, notice: "Todoitem deleted!"
  end

  private
    def set_todolist
      @todolist = todolist.find(params[:todolist_id])
    end

    def todolist_params
      params.require(:todoitem).permit(:task_title, :description, :due_date)
    end
end
