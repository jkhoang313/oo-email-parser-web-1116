# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails.include?(", ") ? emails.split(", ") : emails.split(" ")
  end

  def parse
    @emails.each_with_index do |string, index|
      if string.include?(" ")
        @emails[index] = string.split(" ")
      end
    end
    @emails.flatten.uniq
  end
end
