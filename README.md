# SnackbarJS for Rails

See demo: 
http://fezvrasta.github.io/snackbarjs/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snackbarjs-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snackbarjs-rails

## Usage

Add to the bottom of your layout
```
<%= javascript_tag do %>
  window.flashMessages = $.parseJSON('<%=j flash.to_hash.to_json.html_safe %>');
<% end %>

# Or For slim
javascript:
  window.flashMessages = $.parseJSON('#{j flash.to_hash.to_json.html_safe}')
```

And then to your application.js
```javascript
//= require snackbar

$(document).on('ready page:load', function(){
  $.each( flashMessages, function(key, value){
    $.snackbar({content: value, style: key, timeout: 10000});
  });
});
```

Finally edit your application.css.scss
```scss
@import "snackbar";
@import "snackbar-material";

.snackbar.error {
  background-color: red;
}
.snackbar.alert {
  background-color: yellow;
  color: black;
}
.snackbar.notice {
  background-color: green;
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/snackbarjs-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
