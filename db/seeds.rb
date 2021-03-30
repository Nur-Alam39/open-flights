# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airlines = Airline.create([
                            {
                              name: "Bangladesh Airlines",
                              image_url: "https://thefinancialexpress.com.bd/uploads/1511600741.jpg"
                            },
                            {
                              name: "Southwest",
                              image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
                            },
                            {
                              name: "Delta",
                              image_url: "https://open-flights.s3.amazonaws.com/Delta.png"
                            },
                            {
                              name: "Alaska Airlines",
                              image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png"
                            },
                            {
                              name: "JetBlue",
                              image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png"
                            },
                            {
                              name: "American Airlines",
                              image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png"
                            }
                          ])

reviews = Review.create([
                          {
                            title: "Great Airline",
                            description: "I had a good trip",
                            score: 4.5,
                            airline:airlines.first
                          },
                          {
                            title: "Not a bad Airline",
                            description: "I had a average trip experience",
                            score: 3.5,
                            airline:airlines.first
                          },
                          {
                            title: "Great Airline",
                            description: "I had a good trip",
                            score: 4.5,
                            airline:airlines.second
                          },
                          {
                            title: "Not a bad Airline",
                            description: "I had a average trip experience",
                            score: 3.5,
                            airline:airlines.second
                          },

                        ])