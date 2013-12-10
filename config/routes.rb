Urdb::Application.routes.draw do
  resources :movies do
  	resources :showtimes
  end

  root 'movies#index'

               Prefix Verb   URI Pattern                                    Controller#Action
    movie_showtimes GET    /movies/:movie_id/showtimes(.:format)          showtimes#index
                    POST   /movies/:movie_id/showtimes(.:format)          showtimes#create
 new_movie_showtime GET    /movies/:movie_id/showtimes/new(.:format)      showtimes#new
edit_movie_showtime GET    /movies/:movie_id/showtimes/:id/edit(.:format) showtimes#edit
     movie_showtime GET    /movies/:movie_id/showtimes/:id(.:format)      showtimes#show
                    PATCH  /movies/:movie_id/showtimes/:id(.:format)      showtimes#update
                    PUT    /movies/:movie_id/showtimes/:id(.:format)      showtimes#update
                    DELETE /movies/:movie_id/showtimes/:id(.:format)      showtimes#destroy
             movies GET    /movies(.:format)                              movies#index
                    POST   /movies(.:format)                              movies#create
          new_movie GET    /movies/new(.:format)                          movies#new
         edit_movie GET    /movies/:id/edit(.:format)                     movies#edit
              movie GET    /movies/:id(.:format)                          movies#show
                    PATCH  /movies/:id(.:format)                          movies#update
                    PUT    /movies/:id(.:format)                          movies#update
                    DELETE /movies/:id(.:format)                          movies#destroy
               root GET    /                                              movies#index
end
