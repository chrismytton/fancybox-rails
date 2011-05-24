fancybox-rails
==============

Use [fancybox](http://fancybox.net/) with rails 3.1 asset pipeline.

## Installation

This gem vendors jquery fancybox for Rails 3.1 and greater. The files
will be added to the asset pipeline and available for you to use.

First add the following lines to your applications `Gemfile`:

``` ruby
gem 'jquery-rails'
gem 'fancybox-rails'
```

Then run `bundle install` to update your application's bundle.

Now you need to edit your `app/assets/javascripts/application.js`
file and add the following line:

``` javascript
//= require fancybox
```

And then edit your `app/assets/stylesheets/application.css` file to
look something like:

``` css
/*
 *= require_self
 *= require fancybox
 *= require_tree .
 */
```

That's it!

## Usage

With the gem installed and included in your asset manifests, you can now
use fancybox as you normally would.

``` javascript
jQuery(function() {
  $("a.fancybox").fancybox();
});
```
