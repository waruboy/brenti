require 'spec_helper'

describe Koridor do
  before { @koridor = Koridor.new(name: "1") }

  subject { @koridor }

  it { should respond_to(:halte) }

  it { should be_valid }
end
