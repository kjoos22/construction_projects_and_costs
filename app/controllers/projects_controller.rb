class ProjectsController < ApplicationController
    
    #index
    get '/projects' do 
        @projects = Project.all
        erb :'/projects/index'
    end

    #new
    get '/projects/new' do
        erb :'projects/new'
    end

    #create
    post '/projects' do
        project = current_user.projects.build(params)
        if project.save
            redirect "projects/#{project.id}"
        else
            @errors = project.errors.full_messages.join(" - ")
            erb :'/projects/new'
        end
    end

    #delete
    delete '/projects/:id' do
        project = Project.find_by(id: params[:id])
        if project.user == current_user
            project.destroy
            redirect :'/projects'
        else
            redirect '/projects'
        end
        
        
    end

    #edit
    get '/projects/:id/edit' do
        @p = Project.find_by(id: params[:id])
        if @p.user == current_user
            erb :'/projects/edit'
        else
            redirect '/projects'
        end
    end

    patch '/projects/:id' do
        project = Project.find_by(id: params[:id])
        if project.user == current_user
            project.update(params[:u])
            redirect "/projects/#{project.id}"
        else
            redirect '/projects'
        end
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