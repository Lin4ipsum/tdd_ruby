require "time"

def measure(&block)
  start = Time.now
  yield
  finish = Time.now
  start - finish
end




# it "takes about 1 second to run a block that sleeps for 1 second" do
#     elapsed_time = measure do
#       sleep 1
#     end
#     elapsed_time.should be_within(0.1).of(1)
#   end