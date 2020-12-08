class Application < Sinatra::Base
    get '/' do       
        erb :index       
    end
    post '/:user' do
        @user = params[:user]
        if !User.all.include(user)
             User.new(user)
            redirect '/:user' 
        else  
            redirect '/:user'  
        end
    end
    get '/:user'    
        erb :shows_lists
    end
    post '/:user/:action'
        @action = params[:action]
        if action == "fav"
            redirect '/:user/edit_fav_list'
        elsif action == "hate"
            redirect '/:user/edit_hate_list'
        else
            redirect '/:user/search'
        end

    end
    get '/:user/edit_fav_list'
        erb :edit_fav_list
    end
    get '/:user/edit_hate_list'
        erb :edit_hate_list
    end
    get '/:user/search'
        erb :search
    end
    get '/:user/episodes'
        erb :episodes
    end

end