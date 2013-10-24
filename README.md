font-awesome-rails
=======================

Packages Font Awesome 4 for Rails asset pipeline. Includes a semantic Sass icon mixin.

## Installation

I don't plan to publish this gem on RubyGems, due to the multiple gems that do the same thing and have similar or identical name, so reference the git repository in your Gemfile:

    gem 'font-awesome-rails', github: 'cubus/font-awesome-rails'

Add this to your application.css.sass:

    @import "font-awesome";

## Usage

Either use the classes provided out of the box by Font Awesome, for example:

    <i class='fa fa-camera-retro'></i>

or use the provided mixin in your own classes, like this:

    .my-class {
      @include fa-icon($fa-var-camera-retro);
    }

For a list of all available icons/variables see [this file](https://github.com/FortAwesome/Font-Awesome/blob/master/scss/_variables.scss)