
# <p align="center">  :crown: The Throne Room :crown: </p>

The Throne Room is an interactive rails application that consumes several `API endpoints`, to let users search for public restrooms, `(referred to as "Thrones")` read and write reviews, and register new Thrones to the application database.

Upon launching the application, users are taken to a landing page where they can see a Google Map with pins(:toilet:) indicating locations of the most recently created Thrones. 
[![Screen-Shot-2022-09-22-at-11-37-15-AM.png](https://i.postimg.cc/rpLfv3hr/Screen-Shot-2022-09-22-at-11-37-15-AM.png)](https://postimg.cc/nX0KmRfF)
> The Service Oriented Architecture of this application allowed the dev team to split into a Front End and Back End service. The Front End's focus was on rendering view logic based on data stored in the Back End database, and consuming different API endpoints.

Users can also see these Thrones as a list on the landing page, with each Throne's pertinent information: `Location, Address, Directions`. There is a link to view `More Information` for each Throne, which takes the user to that Throne's show page. 

> The user can easily suss out more details about that particular Throne, such as if there is a baby-changing station, and what kind of Throne it is (gender-neutral? single-stall? something else?). 

On the landing page, there is an option for a user to log-in to the application, which utilizes Google OAuth. When logging in, if the user is new to our application, they will be taken to a `Google Login Consent` screen where they must authorize the application permission to access their name and email. 

[![Screen-Shot-2022-09-22-at-11-36-45-AM.png](https://i.postimg.cc/j51gk5Bs/Screen-Shot-2022-09-22-at-11-36-45-AM.png)](https://postimg.cc/vgWt4QQj)
> This authentication allows the user to bypass having to create or remember a username/password, and Google OAuth ensures the user's information is kept secure. 

With the log-in feature comes extra perks! Logged-in users have special access to parts of our application that non-logged-in users don't. For example, a logged-in user will see an option to `Create a New Throne`, where they are taken to a form to register a Throne that is not already in our database. Additionally, logged-in users are able to `Create a Review` for any specific Throne they visit. 

[![Screen-Shot-2022-09-22-at-11-50-45-AM.png](https://i.postimg.cc/KvKWgd46/Screen-Shot-2022-09-22-at-11-50-45-AM.png)](https://postimg.cc/LnpDcQtD)

## Helpful Links:
[Front End Heroku App](https://damp-hamlet-10233.herokuapp.com)
##
[Back End Heroku App](https://the-throne-room-api.herokuapp.com) 
##
[Back End Repo](https://github.com/EagleEye5085/The_Throne_Room_api)
##
## __Front End Team:__ :crystal_ball:

- Gauri Joshi [GitHub](https://github.com/gaurijo) | [LinkedIn](https://linkedin.com/in/gaurijo)
- Mary Turpin [GitHub](https://github.com/MaryT573) | [LinkedIn](https://www.linkedin.com/in/mary-turpin-434140150)
- Ben Silverstein [GitHub](https://github.com/bensjsilverstein) | [LinkedIn](https://www.linkedin.com/in/benjamin-silverstein-42545a109)
##

## __Back End Team:__ :zap:

- Mike Bonini [GitHub](https://github.com/mkbonini) | [LinkedIn](https://www.linkedin.com/in/michael-bonini-187157131)
- Ethan Nguyen [GitHub](https://github.com/Ethan-t-n) | [LinkedIn](https://www.linkedin.com/in/ethan-nguyen-82b398233)
- Thomas Turner [GitHub](https://github.com/EagleEye5085) | [LinkedIn](https://www.linkedin.com/in/thomasturner482)
##


## How to Install and Run Tests: :computer:

- fork and clone down this repo to your machine 
- run `$ bundle install`
- run `$ bundle exec figaro install` 
- in your newly created `application.yml` file you may enter a `Google ID` and `Google Client Secret` to utilize the Google Oauth functionality
- in this same file you can enter a `Google Map api_key` to utilize the Google Map functionality
- to run the tests run `$ bundle exec rspec`





