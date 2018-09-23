# Practice defining a class and using an attr_accessor to create setter and getter methods.
# Use TDD to write working code.

# Build a class EmailParser that accepts a string of unformatted
# email addresses. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' '). The parse method should, additionally, only return unique emails.
class EmailParser
#  attr_accessor :string_of_email_addresses

  def initialize(string_of_email_addresses)
     @string_of_email_addresses = string_of_email_addresses
  end

  def parse
    #  string_of_email_addresses.split(" ").collect do |email_address|
    #Because there's an attr_accessor, the above commented-out line would also work (without the "@"), in lieu of the below line.
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
