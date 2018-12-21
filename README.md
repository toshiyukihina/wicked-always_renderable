# Wicked::AlwaysRenderable

`Wicked::AlwaysRenderable` is [Wicked](https://github.com/schneems/wicked) extension.
We sometimes want to invoke `render` instead of `redirect_to`. Use `Wicked::AlwaysRenderable` and alway render the template via `render_wizard`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wicked-always_renderable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wicked-always_renderable

## Usage

Just include `Wicked::AlwaysRenderable` and render_wizard!

    class SomeWizardController < ApplicationController
      include Wicked::Wizard
      include Wicked::AlwaysRenderable
      ... (snip) ...
    end

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/toshiyukihina/wicked-always_renderable.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
