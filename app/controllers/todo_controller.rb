class TodoController < ApplicationController
    def index 
    end
    def show
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