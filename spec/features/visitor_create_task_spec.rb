require 'rails_helper'

feature 'Create Task' do
  scenario 'allows access to tasks page' do
    visit '/tasks'
    expect(page).to have_content 'Add task'
  end
  scenario 'allows add task' do
    visit '/tasks'
    fill_in 'task[text]', with: 'Task'
    click_button 'Add task'
    expect(page).to have_content 'remove'
  end
end