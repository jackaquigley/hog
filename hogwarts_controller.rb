require('sinatra')
require('sinatra/contrib/all')if development?

require_relative('./models/house')
require_relative('./models/student')
also_reload('./models/*')

get '/students' do
  @students = Student.all
  erb(:index)
end

get '/students/new' do
  @student = Student.all
  erb(:new)
end

post '/students' do
  new_student = Student.new(params)
  new_student.save
  redirect '/students'
end

get '/students/:id' do
  @student = Student.find(params['id'])
  erb(:show)
end
