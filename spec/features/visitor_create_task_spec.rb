require 'rails_helper'

feature 'Create Task' do
  scenario 'allows access to tasks page' do
    visit '/tasks'
    expect(page).to have_content 'Add task'
  end
  scenario 'allows add task' do
    add_task
    expect(page).to have_content 'Task'
  end
  scenario 'allows delete task' do        
    add_task
    click_link '(remove)'
    expect(page).to have_no_content('Task')
  end
  scenario 'allows complete task' do        
    add_task
    find('input[type=checkbox]').click
    expect(page).to have_content('Task')
  end
end

def add_task
  visit '/tasks'
  fill_in 'task[text]', with: 'Task'
  click_button 'Add task'
end
