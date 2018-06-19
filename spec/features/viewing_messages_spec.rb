feature 'viewing messages' do
  scenario 'the user sees a list of messages in the home page' do
    visit('/messages')
    expect(page).to have_content "hi, what's up"
    expect(page).to have_content "busy at work, you?"
  end
end
