class TodoController < ApplicationController
    def index 
        @todos = Todo.all
    end
    def new
    end
    def create
        t=Todo.new
        t.description=params['description']
        t.pomodoro_estimate=params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    def edit
        @todo = Todo.find_by_id(params[:id])
    end
    def update
        t = Todo.find_by_id(params['id'])
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    def destroy 
        t = Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
    def show
        @todo=Todo.find_by_id(params[:id])
        @todo_pomodoro_estimate = "900"
        todo_id = params[:id] 
        if todo_id == '1'
            @todo_description = "shop"
            @todo_pomodoro_estimate = "5"
        elsif todo_id == '2'    
            @todo_description = "walk"  
            @todo_pomodoro_estimate = "4"
        elsif todo_id == '3'
            @todo_description = "school"
            @todo_pomodoro_estimate = "6"
        elsif todo_id == '4'
            @todo_description = "work"
            @todo_pomodoro_estimate = "5"
        elsif todo_id == '5'
            @todo_description = "play"
            @todo_pomodoro_estimate = "3"
        elsif todo_id == '6'
            @todo_description = "fallout76"
            @todo_pomodoro_estimate = "90909"
        elsif todo_id == '7'
            @todo_description = "fallout76day2"
            @todo_pomodoro_estimate = "900000"
        
            
        
        end
    end
end