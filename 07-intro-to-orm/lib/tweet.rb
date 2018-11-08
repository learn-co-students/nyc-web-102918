module ActiveRecord
  class Base
    ALL = []
    
    def self.all
      sql = <<-SQL
        SELECT * FROM #{self.to_s.downcase.pluralize}
      SQL

      # also load everything from the database
      DB[:conn].execute(sql).each do |row| # tweet row
        # for anything we don't already have
        found_instance = ALL.find do |instance|
          instance.id == row["id"]
        end
        if !found_instance
          # and make ruby instance of Tweet
          self.new(row)
        end
      end

      ALL # can also have tweets that aren't in the database yet
    end
  end
end

class String
  def pluralize
    self + 's'
  end
end

# we're building a super simple ORM because it painful to do
class Tweet < ActiveRecord::Base
  attr_accessor :message, :username
  attr_reader :id




  def initialize(props={})
    @message = props['message']
    @username = props['username']
    @id = props['id']
    # props['beef'] => nil
    ALL << self
  end

  # this will save to the database by either create && update
  def save
    if !self.id
      # create
      # HEREDOC
      sql = <<-SQL
        INSERT INTO tweets (message, username)
        VALUES (?, ?)
      SQL

      # SQL Injection
      # haha'); DROP TABLE tweets; --

      DB[:conn].execute(sql, self.message, self.username)
      @id = DB[:conn].execute("SELECT * FROM tweets;").last["id"]
    else
      # update
      DB[:conn].execute("UPDATE tweets SET message = '#{self.message}', username = '#{self.username}' WHERE id = #{self.id};")
    end
    self
  end
end
