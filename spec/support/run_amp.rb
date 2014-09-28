require 'active_support/core_ext/kernel/reporting'

def run_amp(command, *args)
  capture(:stdout) do
    Ampercoin::Cli.send(command)
  end
end

