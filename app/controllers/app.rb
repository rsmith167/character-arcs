#rackup app/controllers/app.rb #to start app
require './config/environment'

class App < Sinatra::Base
    configure do
        set :views, 'app/views'
    end
    get '/' do 
        erb :index          
    end
    post "/user" do
        # if User.find_by(username: params[:user])
        #     redirect to ("/#{params[:user]}")
        # else
        #     "you don't have an account"    
        # end   
        #@user = User.create(:username => "#{params[:user]}") 
        #erb :create_session
        #redirect to ("/#{@user}") 
        @user = User.find_by(username: params.keys[0])
        @user[User.column_names[params.values[0].to_i+2]] = params[:favchar]
        
        @user.save 
        erb :show_lists
    end 
    get "/user" do  
        if !User.find_by(username: params[:user])
            @user = User.create(:username => "#{params[:user]}")
            @user.save
            "#{@user.username}, please refresh the page"
        else
            @user = User.find_by(username: params[:user])
            erb :show_lists
        end
    end
end

    # get '/:user/search'
    #     erb :search
    # end
    # get '/:user/episodes'
    #     erb :episodes
    # end
