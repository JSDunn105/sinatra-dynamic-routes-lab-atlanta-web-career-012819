require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
    		@name = params[:name].to_s.reverse
    		@name
  end


    get '/square/:number' do
    @square = params[:number].to_i
    @square = @square * @square
    		@square.to_s
    end


    get '/say/:number/:phrase' do
	   @number = params[:number].to_i
	   @phrase = params[:phrase]
	   @number.times{puts @phrase.to_s}
	   end


	get '/say/:word1/:word2/:word3/:word4/:word5' do
	    @phrase = params.values
	    @sentence = @phrase.join(" ") + "."
	    @sentence
	    	end

#
    get '/:operation/:number1/:number2' do
	   @operation = params[:operation]
	   @number1 = params[:number1].to_i
	   @number2 = params[:number2].to_i

	   case @operation
		  when "add"
		  	return (@number1 + @number2)
		  when "subtract"
		  	return (@number1 - @number2)
		  when "divide"
		   	return (@number1 / @number2)
		  when "multiply"
		  	return (@number1 * @number2)
	   end
	   end
end
