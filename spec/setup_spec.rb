require 'rom'
require 'rom/memory'
require 'journalerr'

require 'pry'
describe "Setup of ROM" do
  before do
    @container = Journalerr.setup
  end

  it "will have a container" do
    expect(@container).to be_a ROM::Container
  end

  it "will have a :users relation" do
    expect(@container.relation(:users)).to be_a ROM::Relation
  end
end

