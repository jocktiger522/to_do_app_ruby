class TodoController < ApplicationController
    def index 
    end
    def show 
        @todo_description = "todolist"
        @todo_pomodoro_estimate = "900"
    end
end