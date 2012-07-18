# Guard::Sublime-Ctags

Guard::Sublime-Ctags allows you to automatically run ctag command when files are modified. 

The generated files compatible with default [Sublime Text Ctags plugin](https://github.com/SublimeText/CTags).

## Installation

Add this line to your application's Gemfile:

    gem 'guard-sublime-ctags'

Add guard definitions to your Guardfile by running:

    $ guard init sublime-ctags

### OS X

If anyone is having trouble getting the CTags -R flag to work on OSX, you are probably using the stock CTags installation. to get a proper copy of ctags, use the following options:

    brew install ctags 

## Usage

Please read [Guard usage doc](https://github.com/guard/guard#readme)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
