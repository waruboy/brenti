require 'spec_helper'

describe Halte do
  before do
    @halte = Halte.new(kode: 'k1', nama: 'halteku', koridor_id: 1)
  end

  subject { @halte }

  it { should respond_to(:kode) }
  it { should respond_to(:nama) }
  it { should respond_to(:transfer_id) }
  it { should respond_to(:koridor_id) }
  it { should respond_to(:koridor) }

  it { should be_valid }

end
