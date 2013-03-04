# SimpleStatus

Simple status page that allows you to check the health of running app Useful for nagios checks

Currently supports
	
	Mongoid connection status

## Installation

Add this line to your application's Gemfile:

    gem 'simple_status'

Then add it to your route file 

	mount SimpleStatus::Application =>'/status/'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_status

## Usage

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
