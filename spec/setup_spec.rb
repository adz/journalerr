require 'rom'
require 'rom/memory'
require 'journalerr'

describe "Setup of ROM" do
  before do
    @container = Journalerr.setup
  end

  it "will have a container" do
    expect(@container).to be_a ROM::Container
  end
end

