require 'spec_helper'
require 'active_support/core_ext/kernel/reporting'

describe 'amp --generate_address' do
  it 'displays the new address' do
    expect(run_amp(:generate_address)).to include('ADDRESS')
    expect(run_amp(:generate_address)).to match(/&\w+/)
  end

  it 'persists the address' do
    run_amp(:generate_address)
    expect(run_amp(:list_addresses)).to include('ADDRESS')
    expect(run_amp(:list_addresses)).to match(/&\w+/)
  end
end
