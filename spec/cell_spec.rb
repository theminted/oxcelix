#require './spec_helper'
require '../oxcelix.rb'
 describe "Cell object" do
  describe '#r' do
    it "sets the value of xlcoords" do
      c=Oxcelix::Cell.new
      c.r('H276')
      c.xlcoords.should=='H276'
      c.x.should==7
      c.y.should==275
    end
  end
end