# Ampercoin Command Line Utility

A tool for trading [Ampercoins](www.ampercoin.com)

## Installation

    $ gem install ampercoin-cli

## WARNING

The Ampercoin network is currently only meant to be used for demonstration
purposes only. The harvesting system which will keep it secure isn't built yet.
The network can and will be reset without notice. Hopefully some day this message will go away :).

## Usage

Note: Not all of this works yet.

Create a new Ampercoin address

    $ amp new

    ID | ADDRESS                       | BALANCE
    ---|-------------------------------|--------
    1  | &2FMHhuPMXN9DSCKihAHQZytTxAYV | 0

Next have someone pay you some ampercoins. @masonforest will probably be on
\#ampercoin on [freenode](http://webchat.freenode.net/). You can also email
him at mason@ampercoin.com. A faucet would be nice to have if someone is willing to build it!

Transfer from the account you just created to '&mason'

    $ amp transfer 100 --from 1 --to '&mason'

List your accounts

    $ amp ls

    ID | ADDRESS                       | BALANCE
    ---|-------------------------------|--------
    1  | &2FMHhuPMXN9DSCKihAHQZytTxAYV | 2500

Attach a shorter address

    $ amp shorten '&2FMHhuPMXN9DSCKihAHQZytTxAYV' --to '&somecoolname' --bid 500

    Submitted bid to shorten address...

    Your address '&2FMHhuPMXN9DSCKihAHQZytTxAYV' has been shortened to '&somecoolguy'


## Contributing

1. Fork it ( https://github.com/masonforest/ampercoin-cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
