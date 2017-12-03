require 'rails_helper'

RSpec.describe Wiki, type: :model do

    let(:user) { create(:user) }
    let(:wiki) { create(:post) }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:private) }

    it { is_expected.to validate_length_of(:title).is_at_least(5) }
    it { is_expected.to validate_length_of(:body).is_at_least(20) }

    describe "attributes" do
        it "has a title, body and private attributes" do
            expect(wiki).to have_attributes(title: wiki.title, body: wiki.body, private: wiki.private)
        end
    end
end
