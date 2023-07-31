defmodule BackJson.Users do
 alias BackJson.Users.Create
 alias BackJson.Users.Get
 alias BackJson.Users.Update
 alias BackJson.Users.Delete
 
 defdelegate create(params), to: Create, as: :call
 defdelegate delete(id), to: Delete, as: :call
 defdelegate get(id), to: Get, as: :call
 defdelegate update(params), to: Update, as: :call
end
