class TodoController < ApplicationController
    def index
     @math = 5+5
    end
    
    def show
        @todo_description = "Description of todo"
        @todo_pomodoro = "Amount of pomodoros necessary for task"
        
    end
end