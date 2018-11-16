FactoryBot.define do
  factory :paper do
    title { 'A paper title' }
    venue { 'A venue' }
    year { 1 }
    author
  end
end
