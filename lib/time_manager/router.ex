

defmodule TimeManager.Router do
  use TimeManager, :router

  # ...

  scope "/api", TimeManager do
    pipe_through(:api)

    resources("/tasks", TaskController, only: [:index, :create])
    get("/tasks/:id", TaskController, :show)
    put("/tasks/:id", TaskController, :update)
    delete("/tasks/:id", TaskController, :delete)

    get("/tasks/users/:user_id", TaskController, :tasks_by_user)
  end

  # ...
end
