require 'amoeba'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
                                       :database => File.dirname(__FILE__) + "/test.sqlite3")

log = File.new("log/test.log", "w")
ActiveRecord::Base.logger = Logger.new(log)

load File.dirname(__FILE__) + '/support/schema.rb'
load File.dirname(__FILE__) + '/support/models.rb'
load File.dirname(__FILE__) + '/support/data.rb'
