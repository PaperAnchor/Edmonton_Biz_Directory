## Questions

          1. What am I building? I am building a Biz Directory.
          2. Who are we building it for? I am building it not only for Corus Entertainment, but also for me to improve
               my skills in Rails.
          3. What features do I want to have?
                    - Business
                              - Create / Edit / Destroy
                              - Sorting System
                    -Categories
                    - Contact
                              - Contact Form
                              - Sendgrid
                    - User (Devise)

## User Stories

     As a blank, I want to be able to blank, so that blank.
               - As a user, I want to be able to add a business to the Biz Directory Listing.
               - As a user, I want to be able to edit and destroy businesses in case there is update information
                 or businesses have ended their listing.
               - As a user, I want clients to be able to request advertising through a contact form. (SendGrid?)
               - As a user, I want to be able to add and delete categories.

## Modeling our Data

**Business**
	name:string
	address:string
	city:string
	postal:string
	email:string
	phone:string
	url:string
	description:text
	keywords:string
	category:string
	logo:string
	audio:string
	
**User**


## Think through the pages we need

 		- Home
		- Alphabetical#index
    - Businesses#show
		- Categories#index
    - Contact# Edmonton_Biz_Directory
