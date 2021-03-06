require 'goldmaster_test_case'
require 'user'

class GoldmasterTableTest < GoldmasterTestCase
  def setup
    @users = []
  end

  def setupUser(name, other)
    @users << User.new(name,other)
  end

  def getSearchResultsFor(query)
    @users.select {|u| u.name.include?(query) }.sort{|x,y| x.name <=> y.name}
  end
  
end
