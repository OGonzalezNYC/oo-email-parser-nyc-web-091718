# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#The parse method should, additionally, only return unique emails.
class EmailParser
  attr_accessor :string_of_email_addresses

  def initialize(string_of_email_addresses)
    @string_of_email_addresses = string_of_email_addresses
    #@string_of_email_addresses = string_of_email_addresses
  end

  def parse
    @string_of_email_addresses.split(" ").collect do |email_address|
      if email_address[-1] == ","
        email_address.chomp(",")
      else
        email_address = email_address
      end
    end.uniq
  end

end




# class EmailParser
#   attr_reader :emails
#
#   def initialize(emails)
#     @emails = emails
#   end
#
#   def parse
#     @emails.split(/, | /).uniq
#     #emails.split(/, | /).uniq
#   end
# end
