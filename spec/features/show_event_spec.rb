require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event }

  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.price)
    expect(page).to have_text(event.capacity)
    
    #this is not working yet because this part is not covered yet during lecture
    #expect(page).to have_boolean(event.includes_food)
    #expect(page).to have_boolean(event.includes_drinks)
  end
end
