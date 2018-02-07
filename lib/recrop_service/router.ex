defmodule RecropService.Router do

  use Trot.Router
  get "/", do: 200



  import_routes Trot.NotFound
end
