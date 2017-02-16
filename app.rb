require 'sinatra'
require "sinatra/reloader" if development?

get "/" do
	erb :get_name 
end

post '/name' do
	name = params[:user_name]
	erb :location, :locals => {:name => name}
end

post '/location' do
    location = params[:user_location]
    name = params[:user_name]
    "#{name} your location is #{location}"
    erb :get_age, :locals => {:name => name, :location => location}

    #{}"Hello #{name}"
end

post '/age' do
	age = params[:user_age]
	name = params[:user_name]
	location = params[:user_location]
	"#{name} your age is #{age}"
	erb :get_favorite_numbers, :locals => {:name => name, :location => location, :age => age}
	
end

post '/favorite' do
	favorite1 = params[:user_favorite_numbers1]
	favorite2 = params[:user_favorite_numbers2]
	favorite3 = params[:user_favorite_numbers3]
    name = params[:user_name]
	location = params[:user_location]
	age = params[:user_age]
    "#{name} your favorite numbers are? #{favorite1} + #{favorite2} + #{favorite3}"	
    erb :final_results, :locals => {:name => name, 
        :location => location, :age => age,
        :favorite1 => favorite1, :favorite2 => favorite2,
        :favorite3 => favorite3}
end

# post '/sum' do
# 	sum = params[:user_sum_of_favorite_numbers]
# 	favorite = params[:user_favorite_numbers]
#     name = params[:user_name]
# 	location = params[:user_location]
# 	age = params[:user_age]
#     "#{name} The sum of your favorite numbers is #{get_sum}"
# 	erb :get_sum, :locals => {:name => name, :location => location, :age => age, :favorite => favorite}
# end

post '/final' do
	final = params[:final_user_results]
	favorite1 = params[:user_favorite_numbers1]
	favorite2 = params[:user_favorite_numbers2]
	favorite3 = params[:user_favorite_numbers3]
    name = params[:user_name]
	location = params[:user_location]
	age = params[:user_age]
	sum = params[:user_favorite_numbers1 + 
		:user_favorite_numbers2 + :user_favorite_numbers3]
	erb :final_results
	
end	
                    