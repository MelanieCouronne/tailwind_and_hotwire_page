# Plume technical challenge 1

This challenge is built to assess the ability of a candidate to build a feature in a new environment and with some literature as guidelines.

Some of the new features you might discover during this challenge :
- Rails 7 new assets pipeline
- [Tailwind CSS](https://tailwindcss.com) rather than Bootstrap
- Hotwire (optional)

## Requirements

- yarn
- ruby 3.03
- bundler
- Postgresql
- node
- foreman (optional)

## Getting started 

Please follow the following steps to get started

**Installation**

1. On Github fork this repo into **a private repo**
2. Clone your fork locally
3. Within the repository run the following commands
  - bundle install
  - yarn install
  - rails db:create db:migrate

**Starting the app**

This app is built with Rails 7 and the new assets pipeline for JS and CSS `rails s` will only start the server without the assets. Two options are available to start the app.

1. Single command

```
`bin/dev`
```

This will start everything you need with a single command.

2. Multiple commands (useful for byebug)

If you need to run byebug or any other debugging tools, solution 1 won't work. In separate tabs run the following commands

```
rails s
```

```
yarn build --watch
```

``` 
rails tailwindcss:watch
```

## The feature to build

The goal is to create a very basic version of our library view in Plume. Feel free to sign up and create a kid to get a live example.

#### Task 1

For this, we provide as an input a [CSV file](https://github.com/plume-app/challenge-1/blob/main/db/seed.csv) with the data to seed your database. First, analyze the content and create the model(s) you need. Then update the seed.rb file accordingly.


#### Task 2

On the root path display all the stories grouped by universe_name. 

### Task 3

Build a card for each story. This card has the cover image, the title, and the description.

Here is an example of how it should look.

![Capture d’écran 2022-02-22 à 11 21 52 AM](https://user-images.githubusercontent.com/7847244/155131557-20d88995-5e8c-44d5-a848-6285ebef108c.jpg)


The design of the card is also available in this [Figma](https://www.figma.com/file/vsgnaKqwrg7KK5OZGbgLcl/Untitled?node-id=0%3A1) 

**Tips for the image:** 

There is a basic Cloudinary configuration already available in this project, you can use the cloudinary helper with the cloudinary key given in the csv file to generate the Image tag

```ruby
<%= cl_image_tag("production/stories/alice-au-pays-des-merveilles/as_cover/r6v62fvq8bokh6ivb358hia4bsbf") %>
```

**Tips for Tailwind colors:** 

Plume color palette is defined in this configuration file `./app/javascript/config/colors.js` and imported in the Tailwind config file. It overrides the default Tailwind color Palette. 

Here are a few examples you can use : 

```
bg-blue-lighter
bg-blue-light
text-gray-light
fill-blue
```


### Task 4

For each card when the user clicks on it we would like to display a bigger preview modal. Here is a live example from our app.

https://user-images.githubusercontent.com/7847244/155132520-5f823c1d-6ae7-487d-af8c-b028ab0cd458.mp4

The design of the card is also in the [Figma](https://www.figma.com/file/vsgnaKqwrg7KK5OZGbgLcl/Untitled?node-id=0%3A1).

To do so you will need to generate a remote modal dynamically. This can be achieved now with Hotwire in a much simpler way than it was before. You can take some inspiration from this [nice article](https://www.bearer.com/blog/how-to-build-modals-with-hotwire-turbo-frames-stimulusjs).


### Deploy (Optionnal)

Deploy it to Heroku


### Submission

Once you have completed your project, you can add the following users to the repo so that we can review it and ping @adrienpoly on slack.

- @adrienpoly
- @lomig
- @ronanlouarn
