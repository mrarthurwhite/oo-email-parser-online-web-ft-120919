# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :es
  def initialize(emails)
    @es=emails
  end

  def parse
    a=[]
    es.split(%r{,\s*|\s}).each do |email|
      email.strip!
      if (!a.include?(email))
        a<<email
      end
    end
    #binding.pry
    a
  end

end
#
#e = "john@doe.com, person@somewhere.org"
#e = "avi@test.com arel@test.com"
#e = "avi@test.com, avi@test.com"
#parser = EmailAddressParser.new(e)

#parser.parse
