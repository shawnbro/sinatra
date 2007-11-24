require File.dirname(__FILE__) + '/helper'

context "Helpers" do
  
  specify "for event context" do
    
    helpers do
      def foo
        'foo'
      end
    end
    
    get '/' do
      foo
    end
    
    get_it '/'
    
    should.be.ok
    body.should.equal 'foo'
    
  end
  
end
