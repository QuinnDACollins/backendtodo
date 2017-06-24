class TodoController < ApplicationController
    def index
     @math = 5+5
    end
    
    def show
        @id = params[:id]
        if @id == '1'
                    @todo_description = "Description of todo"
        @todo_pomodoro = "Amount of pomodoros necessary for task"
       
        
        elsif @id == '2'
             @todo_description = "the number 2"
        @todo_pomodoro = "4"
        else
          @todo_description = "else happened"
        @todo_pomodoro = "67"
        end
    end
end
