require 'rails_helper'

describe Company, 'required fields with formats' do

  subject {
    described_class.create(name: 'Google', website: 'https://www.google.com/',
                             headquarter: 'Silicon Valley', size: '1000+',
                             founded: '1998', industry: 'Others',
                             revenue: '123456789', synopsis: 'we do everything...')
  }

  it 'contains everything required' do
    expect(subject).to be_valid
    expect(subject.website).to match(/\A#{URI::regexp}\z/)
    expect(subject.founded).to match(/\A\d+\z/)
    expect(%w(1-50 51-200 201-500 501-1000 1000+)).
        to include(subject.size)
    expect(%w(Aerospace Agriculture Chemical Computer Construction Defense Education Energy Entertainment Financial Food Healthcare Hospitality Information Manufacturing Media Mining Telecommunications Transport Water Others)).
        to include(subject.industry)
  end

  it 'is missing name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is missing website' do
    subject.website = nil
    expect(subject).to_not be_valid
  end

  it 'is missing headquarter' do
    subject.headquarter = nil
    expect(subject).to_not be_valid
  end

  it 'is missing size' do
    subject.size = nil
    expect(subject).to_not be_valid
  end

  it 'is missing founded' do
    subject.founded = nil
    expect(subject).to_not be_valid
  end

  it 'is missing industry' do
    subject.industry = nil
    expect(subject).to_not be_valid
  end

  it 'is missing revenue' do
    subject.revenue = nil
    expect(subject).to_not be_valid
  end

  it 'is missing synopsis' do
    subject.synopsis = nil
    expect(subject).to_not be_valid
  end
end

describe Company, 'uniqueness' do
  it 'has different names' do
    company1 = Company.create(name: 'A', website: 'https://www.google.com/',
                        headquarter: 'Silicon Valley', size: '1000+',
                        founded: '1998', industry: 'Others',
                        revenue: '123456789', synopsis: 'we do everything...')
    company2 = Company.create(name: 'A', website: 'https://www.google.com/',
                              headquarter: 'Silicon Valley', size: '1000+',
                              founded: '1998', industry: 'Others',
                              revenue: '123456789', synopsis: 'we do everything...')

    expect(company1).to be_valid
    expect(company2).to_not be_valid
  end
end

describe Company, 'associations' do
  it 'has many jobs' do
    assoc = described_class.reflect_on_association(:jobs)
    expect(assoc.macro).to eq :has_many
  end
end