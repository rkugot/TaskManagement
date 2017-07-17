require 'spec_helper'

describe Task, type: :model do
  it { should validate_presence_of :text }
end