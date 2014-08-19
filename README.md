# Bazaar

Bazaar is a random item and Heroku-ish name generator.

## Installation

Add this line to your application's Gemfile:

    gem 'bazaar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bazaar

## Usage

    Bazaar.object
    => "Dirty rubberband"
    => "Unusual pillow"
    => "Slippery toothpaste"

    Bazaar.super_object
    => "Unwavering foliage"
    => "Tranquil snowflake"
    => "Exuberant drylands"

    Bazaar.heroku
    => "inquisitive-cavern-6617"
    => "jubilant-sunset-9301"
    => "frightened-geyser-4542"

    Bazaar.adjective_animal
    => "Golden quetzal"
    => "Mighty triceratop"
    Bazaar.adjective_animal({start_with: 'p'})
    => "Pure panda"
    => "Pumped ptarmigan"

    Bazaar.anonymous_animal
    => "anonymous gopher"
    => "anonymous axolotl"

    Bazaar.adj
    => "Colossal"
    Bazaar.item
    => "Javelin"
    Bazaar.super_adj
    => "Limitless"
    Bazaar.super_item
    => "Lagoon"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
