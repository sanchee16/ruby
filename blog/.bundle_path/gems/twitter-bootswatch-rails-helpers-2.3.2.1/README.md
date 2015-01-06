# Twitter Bootswatch Rails 2.3.2 Helpers gem

  - Requires [twitter-bootswatch-rails](https://github.com/scottvrosenthal/twitter-bootswatch-railstree/2.3.2)
  - Provides view helpers for twitter bootstrap's alerts and breadcrumbs

## Installing Gem

Add this line to your application's Gemfile:

    gem 'twitter-bootswatch-rails', '~> 2.3.2'

    gem 'twitter-bootswatch-rails-helpers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter-bootswatch-rails-helpers


## Usages

Alerts:

```erb
<%= bootswatch_flash_container(:default, true) do %>
  <h4>Alert block</h4><p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>
<% end %>
<%= bootswatch_flash_container(:success) do %>
  <strong>Success</strong> You successfully read this important alert message.
<% end %>
<%= bootswatch_flash_container(:error) do %>
  <strong>Error</strong> Change a few things up and try submitting again.
<% end %>
<%= bootswatch_flash_container(:info) do %>
  <strong>Information</strong> This alert needs your attention, but it's not super important.
<% end %>
```

Breadcrumbs:

Place an add_breadcrumb call in the action of your controller:

```ruby
def index
  add_breadcrumb "Test link", root_path
end
```

Place a call to the render_breadcrumbs helper at the top of the view or where you want it to render:

```erb
<%= render_breadcrumbs %>
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
