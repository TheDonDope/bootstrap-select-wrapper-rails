# Bootstrap::Select::Wrapper::Rails

This gem is a simple wrapper for the bootstrap-select plugin.
It is bundled as a gem to be able to include this 3rd party asset into the asset pipeline, without having to locally import the actual CSS and JavaScript into your project.
Please see http://silviomoreto.github.io/bootstrap-select/ for the original plugin.

## Installation

Add this line to your application's Gemfile:

    gem 'bootstrap-select-wrapper-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-select-wrapper-rails

## Usage

1. In your `app/assets/javascripts/application.js` include the following line:

    `//= require bootstrap-select`

2. In your `app/assets/javascripts/application.css` you can include this line:
    
    `*=require bootstrap-select`

However, if you use SASS i advise you to create a specific `bootstrap-select_and_overrides.css.scss` file
and include the `bootstrap-select.css` via an Import statement:
    
    @Import 'bootstrap-select';
    
A sample HTML markup may then look like this:

    <select class="selectpicker"><option value="Herr">Herr</option><option value="Frau">Frau</option></select>

Yet, since this is a gemified version, it might be quite possible you are using it in an Ruby on Rails app, so, for the love of god, here some .html.erb markup for you:

    <%= f.select( :salutation, options_for_select( [ ['Herr', 'Herr'], ['Frau', 'Frau'] ] ), { }, { 'data-width' => "100%", :class => "selectpicker"} ) %>

Notice you can alter the width of the select with the `data-width` html attribute.

At last you need to have an JavaScript file to call the actual `selectpicker` method.
Since the selectpicker is somewhat configurable, i like to have an JavaScript file, corresponding to the CSS file, something like `app/assets/javascripts/bootstrap-select_and_overrides.js`.

Here is a simple sample for this:

    $(document).ready(function() {
	    $('.selectpicker').selectpicker();
    });	

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bootstrap-select-wrapper-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
