require 'rails_helper'

RSpec.describe Wiki, type: :model do

    let(:name) { RandomData.random_sentence }
    let(:description) { RandomData.random_paragraph }
    let(:title) { RandomData.random_sentence }
    let(:body) { RandomData.random_paragraph }

    it { is_expected.to have_many(:comments) }

    # Need to fine tune this facotry
    #it { is_expected.to belong_to(:user) }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
    #it { is_expected.to validate_presence_of(:user) }

    describe "attributes" do
        it "has a title and body attributes" do
            expect(post).to have_attributes(title: post.title, body: post.body)
        end
    end


end
