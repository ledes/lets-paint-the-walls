#Let's paint the walls

## Technical Specifications

  -Sinatra
  
  -RMagick
  
##  Description

The Sinatra app is designed to change the color of the walls from an uploaded picture and a pair of given coordinates. Built in Ruby with RMagick and Sinatra.

I often find myself in need of painting the walls at home and wishing I could see a preview of the final result before actually doing the job.
After searching for an app that fit this description, and coming up short, I realized I needed to take on this project.
It's been so interesting to work on and I'd like to continue to improve it and make it fully functional for any user

## App expansion

In order to improve the app, the following features will be added:

- Algorithm improvement to make the software more accurate. 
  1. Make copy of uploaded image
  2. Desaturate color of the new copy
  3. Add contrast to the new copy
  4. Merge both pictures. The copy version with low oppacity
  5. Show user new image
  
- User can select the coordinates of the desire color just by clicking on the picture

- New image is displayed after user clicks on the desired color using JavaScript.

- User can click more than once. Every time the user clicks on another coordinate, the new image will be merged with the previous one in order to make more accurate selections.

- Style the app

- Deploy with heroku


## Dream features

- Build social media to share and vote for each user's new walls

- Build IOS app to make it easier for the user to take a picture and start using the app (RubyMotion/Swift)



