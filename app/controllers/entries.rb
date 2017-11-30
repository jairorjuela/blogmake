#index
get '/entries/index' do
  @entries = Entry.all
  erb :"entries/index"
end

#new
get '/entries/new' do
  erb :"entries/new"
end

#show
get '/entries/:id' do
  @entries = Entry.find(params[:id])
  erb :"entries/show"
end

#Create
post '/entries' do
  @entries = Entry.new(params[:entry])
    if @entries.save
      redirect "/entries/#{@entries.id}"
    else
      @errors = @entries.errors.full_messages
      erb :"entries/new"
    end
end

#Edit
get '/entries/:id/edit' do
  @entries = Entry.find(params[:id])
  erb :"/entries/edit"
end

#update
patch '/entries/:id' do
  @entries = Entry.find(params[:id])
  if @entries.update(params[:entry])
    redirect "/entries/#{@entries.id}"
  else
    @errors = @entries.errors.full_messages
    erb :"entries/edit"
  end
end

#Delete
delete '/entries/:id' do
  entry = Entry.find(params[:id])
  entry.destroy
  redirect "/entries/index"
end
