require 'rails_helper'

describe Album do
  # Tests will go here.
  it { should have_many(:songs) }
end
