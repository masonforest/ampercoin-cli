require "ampercoin/cli/version"
require 'ampercoin'
require 'optparse'
require 'table_print'

module Ampercoin
  module Cli
    def self.run
      options = {}
      action = nil
      OptionParser.new do |opts|
        opts.banner = "Usage: amp [options]"

        opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
          options[:verbose] = v
        end

        opts.on('new') do |address|
          action = :generate_address
        end

        opts.on('ls') do |address|
          action = :list_addresses
        end

      end.parse!

      if action
        send(action)
      else
        puts "Usage: amp [options]"
      end
    end

    def self.list_addresses
      tp Ampercoin::Account.all, :id ,:address, :balance
    end

    def self.generate_address
      Ampercoin::Account.create
      list_addresses
    end
  end
end
