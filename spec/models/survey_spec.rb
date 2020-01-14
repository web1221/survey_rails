require 'rails_helper'

describe Survey do
it { should have_many(:questions) }
it { should validate_presence_of :title }
it { should validate_length_of(:title).is_at_most(50)}

it("titleizes the title of an survey") do
  survey = Survey.create({title: "how often do you work"})
  expect(survey.title()).to(eq("How Often Do You Work"))
end
end
