require 'rails_helper'

RSpec.describe Event, type: :model do
  #describe "validations" do
    #it { is_expected.to validate_presence_of(:name) }
    #it { is_expected.to validate_length_of(:description).is_at_most(500) }
    #it { is_expected.to validate_presence_of(:location) }
  #end

  #describe "#cheapevent?" do
    #let(:cheapevent_event) { create :event, price: 20 }
    #let(:non_cheapevent_event) { create :event, price: 200 }

    #it "returns true if the price is smaller than 30 EUR" do
      #expect(cheapevent_event.cheapevent?).to eq(true)
      #expect(non_cheapevent_event.cheapevent?).to eq(false)
    #end
  #end

  describe ".order_by_price" do
    let!(:event1) { create :event, price: 100 }
    let!(:event2) { create :event, price: 200 }
    let!(:event3) { create :event, price: 50 }

    it "returns a sorted array of events by prices" do
      # note that they should not come out in the order that they were created
      expect(Event.order_by_price).to eq([event3, event1, event2])
    end
  end

end
