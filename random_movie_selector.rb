require 'csv'
require 'pry'
require_relative './Movie.rb'

table = CSV.parse(File.read("filmage.csv"), headers: true)

movies = table.map do |movie|
    Movie.new(movie)
end

movie = movies.sample 

puts "#{movie.title} (#{movie.director} | #{movie.year})"