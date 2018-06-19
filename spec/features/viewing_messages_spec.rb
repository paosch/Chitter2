feature 'viewing messages' do
  scenario 'the user sees the list of posted messages in the homepage' do
    visit('/messages')
    expect(page).to have_content "hi, what's up?"
    expect(page).to have_content "bored at home, you?"
  end
end
