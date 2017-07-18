require 'rails_helper'

describe Task do
  describe "validations" do
    it { should validate_presence_of :text }
  end
  describe "text" do
    it "returns the task text" do
      task = create(:task, text: 'Task1')
      expect(task.text).to eq 'Task1'
    end
  end
end