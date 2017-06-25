class TodoController < ApplicationController
    def index
     @todos =  Todo.all
    end
    
    def show
        @todo = Todo.find_by_id(params[:id])
      # @todo_description = "Description of todo"
     #   @todo_pomodoro = "Amount of pomodoros necessary for task"
     #   @id = params[:id]
        # if @id == '1'
        #     @todo_description = "Study for the upcoming geometry quiz."
       
        
        # elsif @id == '2'
        #   @todo_description = "Feed your cat cause she's probably hungry."
          
        # elsif @id =='3'
        # @todo_description = "You're tired, sleep."
        # elsif @id=='4'
        # @todo_description = "Do your gaming final project because processing is hard."
        # elsif @if=='5'
        # @todo_description = "Take out the trash it stinks."
     #   end
    end
    
    def new
    end
    
    def create
        t = Todo.new
         t.description = params['description']
         t.pomodoro_estimate = params['pomodoro_estimate']
         t.save
         redirect_to "/todo/show/#{ t.id }"
    end
    
    def edit
        @todo = Todo.find(params[:id])
    end
    
    def update
        t = Todo.find(params[:id])
         t.description = params['description']
         t.pomodoro_estimate = params['pomodoro_estimate']
         t.save
         redirect_to "/todo/show/#{ t.id }"
    end 
    
    def destroy
        t = Todo.find(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
    
    def completion
        t = Todo.find(params[:id])
        t.complete = true
        t.save
        redirect_to root_path
    end 
end
