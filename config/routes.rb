Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })

  post("/insert_director", { :controller => "directors", :action => "create"})
  get("/delete_director/:id", { :controller => "directors", :action => "destroy"})
  post('/update_director_record/:id', { :controller => "directors", :action => "update"})

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie_record", { :controller => "movies", :action => "create"})
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })
  post("/update_movie_record/:id", { :controller => "movies", :action => "update"})
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor", { :controller => "actors", :action => "create"})
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})
  post('/update_actor_record/:id', { :controller => "actors", :action => "update"})
end
