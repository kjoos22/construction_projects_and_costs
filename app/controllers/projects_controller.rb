class ProjectsController < ApplicationController
    
    #index
    get '/projects' do 
        @projects = Project.all
        erb :'/projects/index'
    end

    #create
    get 'projects/new' do
        erb :'projects/new'
    end

    #show
    get '/projects/:id' do
        @p = Project.find_by(id: params[:id])
        if @p
            erb :'/projects/show'
        else 
            redirect :'/projects/index'
        end
    end    
    
end