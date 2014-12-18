Project 1 - CitizenPrep.com

GA WDIDC4 December 2014

Overview

CitizenPrep.com is an app where immigrants can prepare for the citizenship exam by taking a quiz that includes almost all of the questions from the exam.  They can also post questions, answers to questons and/or advice or inspiration on a forum.

https://citizenprep.herokuapp.com

Technologies Used

	Ruby 2.1.2
	Ruby on Sinatra
	PostgreSQL Database
	ActiveRecord
	Sinatra Simple Authentication
	Kronic gem converts timestamps to words
	HTML
	CSS 

User Stories Completed

	As the user I should be able to know the correct answer to each question in the quiz.
	As a user I should be able to take the quiz, one question at a time.
	As a user I should be able to create a post on the forum.
	As a user I should be able to view the complete forum with all posts.
	As a user I should be able to logout and go to the welcome page.
	As a user I should be able to login with email and password.

To view all user stories:  https://www.pivotaltracker.com/n/projects/1230470

citizenprep_wireframe.png
citzenprep_erd.png

What's next?
	Styling
	Liking posts in the forum
	Adding pictures for each question.
	Testing
	Refactoring

Set up

rake db:create
rake db:migrate
