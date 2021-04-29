require 'bike.rb'


describe Bike do
  it "Bike responds to working" do
    expect(subject).to respond_to :working?
  end

  context 'reported bike broken' do
    it "reports bike as broken" do
      expect(subject).to respond_to :report_broken
    end
  end

  it 'can be reported broken' do
    subject.report_broken

    expect(subject).to be_broken
  end
end



#   As a member of the public,
# So that I reduce the chance of getting a broken bike in future,
# I'd like to report a bike as broken when I return it.



# As a maintainer of the system,
# So that I can manage broken bikes and not disappoint users,
# I'd like docking stations to accept returning bikes (broken or not).

