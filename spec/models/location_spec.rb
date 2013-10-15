require 'spec_helper'

describe Location do
  let(:lokasi) { Location.new(place_id: 1, halte_id:1) }

  subject { lokasi }

  it { should respond_to(:halte_id) }
  it { should respond_to(:place_id) }
  it { should respond_to(:remark) }
  it { should respond_to(:halte) }
  it { should respond_to(:place) }
  it { should be_valid }

  describe "when no halte_id" do
  	before { lokasi.halte_id = nil }
  	it { should_not be_valid }
  end

  # describe "when no place_id" do
  # 	before { lokasi.place_id = nil }
  # 	it { should_not be_valid }
  # end
end
