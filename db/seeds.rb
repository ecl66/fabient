# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'csv'

csv = CSV.foreach('pokemon.csv', headers: %w[id name type_1 type_2 total hp attack defense sp_atk sp_def speed generation legendary]) do |row|
  begin
    Pokemon.create row.to_h 
  rescue
    p 'card already exists, skipping...'
  end
end
