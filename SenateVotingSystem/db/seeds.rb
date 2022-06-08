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
User.create(first_name: "John", last_name: "Smith", has_voted: false)
Candidate.create(first_name: 'Emma', surname: 'BREAGAN', party: 'Animal Justice Party', order: 1)
Candidate.create(first_name: 'Tania', surname: 'NOBLE', party: 'Animal Justice Party', order: 2)

Candidate.create(first_name: 'Ron', surname: 'WATERS', party: 'Antipaedophile Party', order: 1)

Candidate.create(first_name: 'Sundance', surname: 'BILSON-THOMPSON', party: 'Australian Cyclists Party', order: 1)
Candidate.create(first_name: 'Angus', surname: 'HARKER-SMITH', party: 'Australian Cyclists Party', order: 2)

Candidate.create(first_name: 'Michael', surname: 'ALLISON', party: 'Australian Labor Party', order: 1)
Candidate.create(first_name: 'Don', surname: 'FARRELL', party: 'Australian Labor Party', order: 2)
Candidate.create(first_name: 'Alex', surname: 'GALLACHER', party: 'Australian Labor Party', order: 3)
Candidate.create(first_name: 'Bronwyn', surname: 'GALLACHER', party: 'Australian Labor Party', order: 4)
Candidate.create(first_name: 'Anne', surname: 'McEWEN', party: 'Australian Labor Party', order: 5)
Candidate.create(first_name: 'Penny', surname: 'WONG', party: 'Australian Labor Party', order: 6)

Candidate.create(first_name: 'Andrew', surname: 'HORWOOD', party: 'Australian Liberty Alliance', order: 1)
Candidate.create(first_name: 'Wanda Lee', surname: 'MARSH', party: 'Australian Liberty Alliance', order: 2)

Candidate.create(first_name: 'Nathan', surname: 'GREEN', party: 'Australian Motoring Enthusiast Party', order: 1)
Candidate.create(first_name: 'Judith', surname: 'KUERSCHNER', party: 'Australian Liberty Alliance', order: 2)

Candidate.create(first_name: 'Sasha', surname: 'PAZESKI-NIKOLOSKI', party: 'Australian Progressives', order: 1)
Candidate.create(first_name: 'Jaz', surname: 'PRIDDEY', party: 'Australian Progressives', order: 2)

Candidate.create(first_name: 'Margaret', surname: 'SAUNDERS', party: 'Australian Sex Party', order: 1)

Candidate.create(first_name: 'Matt', surname: 'ATTIA', party: 'Christian Democratic Party (Fred Nile Group)', order: 1)
Candidate.create(first_name: 'Joseph Kelton', surname: 'STEPHEN', party: 'Christian Democratic Party (Fred Nile Group)', order: 2)

Candidate.create(first_name: 'Alex', surname: 'KOZLOW', party: 'Citizens Electoral Council', order: 1)
Candidate.create(first_name: 'Paul', surname: 'SIEBERT', party: 'Citizens Electoral Council', order: 2)

Candidate.create(first_name: 'Lynn-Marie', surname: 'GROSSER', party: 'Derryn Hinchs Justice Party', order: 1)
Candidate.create(first_name: 'Colin', surname: 'THOMAS', party: 'Derryn Hinchs Justice Party', order: 2)

Candidate.create(first_name: 'Bob', surname: 'DAY', party: 'Family First', order: 1)
Candidate.create(first_name: 'Lucy', surname: 'GICHUHI', party: 'Family First', order: 2)

Candidate.create(first_name: 'Mohammad', surname: 'ALI', party: 'Independent', order: 1)
Candidate.create(first_name: 'Christopher Mark', surname: 'COCHRANE', party: 'Independent', order: 2)
Candidate.create(first_name: 'Malcolm Lloyd', surname: 'DAVEY', party: 'Independent', order: 3)
Candidate.create(first_name: 'Adam', surname: 'RICHARDS', party: 'Independent', order: 4)
Candidate.create(first_name: 'Dave', surname: 'SADDLER', party: 'Independent', order: 5)

Candidate.create(first_name: 'Cory', surname: 'BERNARDI', party: 'Liberal', order: 1)
Candidate.create(first_name: 'Simon', surname: 'BIRMINGHAM', party: 'Liberal', order: 2)
Candidate.create(first_name: 'Sean', surname: 'EDWARDS', party: 'Liberal', order: 3)
Candidate.create(first_name: 'David', surname: 'FAWCETT', party: 'Liberal', order: 4)
Candidate.create(first_name: 'Kerryne', surname: 'LIDDLE', party: 'Liberal', order: 5)
Candidate.create(first_name: 'Anne', surname: 'RUSTON', party: 'Liberal', order: 6)

Candidate.create(first_name: 'Michael', surname: 'NOACK', party: 'Liberal Democrats', order: 1)
Candidate.create(first_name: 'Roostam', surname: 'SADRI', party: 'Liberal Democrats', order: 2)

Candidate.create(first_name: 'Ryan Douglas', surname: 'Parker', party: 'Marijuana (HEMP) Party', order: 1)

Candidate.create(first_name: 'Alex', surname: 'BOND', party: 'Marriage Equality', order: 1)
Candidate.create(first_name: 'Adrian', surname: 'TUAZON-McCHEYNE', party: 'Marriage Equality', order: 2)

Candidate.create(first_name: 'Darryl', surname: 'BOTHE', party: 'Mature Australia', order: 1)
Candidate.create(first_name: 'Lyndal', surname: 'DENNY', party: 'Mature Australia', order: 2)

Candidate.create(first_name: 'Stirling', surname: 'GRIFF', party: 'Nick Xenophon Team', order: 1)
Candidate.create(first_name: 'Skye', surname: 'KAKOSCHKE-MOORE', party: 'Nick Xenophon Team', order: 2)
Candidate.create(first_name: 'Time', surname: 'STORER', party: 'Nick Xenophon Team', order: 3)
Candidate.create(first_name: 'Nick', surname: 'XENOPHON', party: 'Nick Xenophon Team', order: 4)

Candidate.create(first_name: 'Carlo', surname: 'FILINGERI', party: 'Palmer United Party', order: 1)
Candidate.create(first_name: 'Kristian', surname: 'REES', party: 'Palmer United Party', order: 2)

Candidate.create(first_name: 'Steven David', surname: 'BURGESS', party: 'Pauline Hansons One Nation', order: 1)
Candidate.create(first_name: 'Angelina', surname: 'NICOLIS', party: 'Pauline Hansons One Nation', order: 2)

Candidate.create(first_name: 'Nick', surname: 'CARTER', party: 'Shooters, Fishers and Farmers', order: 1)
Candidate.create(first_name: 'John', surname: 'HAHN', party: 'Shooters, Fishers and Farmers', order: 2)

Candidate.create(first_name: 'Terence Michael', surname: 'CRAWFORD', party: 'The Arts Party', order: 1)
Candidate.create(first_name: 'Charles Andrew Laurence', surname: 'SANDERS', party: 'The Arts Party', order: 2)

Candidate.create(first_name: 'Harriet', surname: 'DE KOK', party: 'The Arts Party', order: 1)
Candidate.create(first_name: 'Sarah', surname: 'HANSON-YOUNG', party: 'The Arts Party', order: 2)
Candidate.create(first_name: 'Jody', surname: 'MOATE', party: 'The Arts Party', order: 3)
Candidate.create(first_name: 'Robert', surname: 'SIMMS', party: 'The Arts Party', order: 4)

Candidate.create(first_name: 'Jeff', surname: 'BAKER', party: 'VOTEFLUX.ORG | Upgrade Democracy!', order: 1)
Candidate.create(first_name: 'Adam Anthony', surname: 'BIRD', party: 'VOTEFLUX.ORG | Upgrade Democracy!', order: 2)

Candidate.create(first_name: 'Kym', surname: 'BUCKLEY', party: 'Voluntary Euthanasia Party', order: 1)
Candidate.create(first_name: 'Jessica', surname: 'KNIGHT', party: 'Voluntary Euthanasia Party', order: 2)