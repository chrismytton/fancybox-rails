# fancybox-rails

Use [fancybox 1.3.4](http://fancybox.net/) with rails 3.1+ asset pipeline.

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
//= require jquery
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

## Usage

With the gem installed and included in your asset manifests, you can now
use fancybox as you normally would.

``` javascript
jQuery(function() {
  $("a.fancybox").fancybox();
});
```

If you're using [CoffeeScript](http://coffeescript.org/) you can use the
plugin in the same way.

```coffeescript
jQuery ->
  $('a.fancybox').fancybox()
```

## Customization

If you want to customize the fancybox assets you can copy the assets
from the gem into your application's `lib/assets/` directory.

    $ rails generate fancybox_rails

If you want to see what files will be created without actually creating
them, run the generator with the `--pretend` option.

## fancyBox 2.0

If you want to use [fancyBox 2.0](http://fancyapps.com/fancybox/) then
check out [fancybox2-rails](https://github.com/kyparn/fancybox2-rails).

Please be aware that the [license](http://fancyapps.com/fancybox/#license) has changed in the new version and
you'll need to purchase one if you intend to use *that fork* for
commercial purposes.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## More information

### Build status

[![Build Status](https://travis-ci.org/hecticjeff/fancybox-rails.png?branch=master)](https://travis-ci.org/hecticjeff/fancybox-rails)

### Useful links

* [Contributors](https://github.com/hecticjeff/fancybox-rails/contributors)
* [DHH's RailsConf 2011 talk on the rails 3.1 asset pipeline](http://www.youtube.com/watch?v=cGdCI2HhfAU)

Copyright (c) Chris Mytton
