# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Candidate.create(first_name: 'Anthony', surname: 'Albanese', party: 'Australian Labor Party', totalvotes: 100, order: 1)
# Candidate.create(first_name: 'Scott', surname: 'Morrison', party: 'the Liberal Party of Australia', totalvotes: 75,order: 1)
# Candidate.create(first_name: 'Barnaby', surname: 'Joyce', party: ' the Nationals', totalvotes: 20, order: 1)
# Candidate.create(first_name: 'Shae', surname: 'haggis', party: 'Australian Labor Party', totalvotes: 90, order: 2)
# Candidate.create(first_name: 'Haard', surname: 'Shah', party: 'the Liberal Party of Australia', totalvotes: 40, order: 2)
# Candidate.create(first_name: 'Aqmal', surname: 'Pulle', party: ' the Nationals', totalvotes: 20, order: 2)
User.create(first_name: "Haard", last_name: "Shah", has_voted: false)
User.create(first_name: "Thomas", last_name: "Wilson", has_voted: false)
User.create(first_name: "Shae", last_name: "Haggis", has_voted: false)
User.create(first_name: "John", last_name: "Smith", has_voted: true)