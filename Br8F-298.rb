class Timer
    attr_accessor :seconds
    def seconds
        @seconds || 0
    end 
    def time_string(n)
    	div = n % 60
    	div1 = n % 3600
    	div2 = div1 % 60
    	if n < 10 
    		return "00:00:0"+ "#{n}"
    	elsif n < 60
    		return "00:00:"+ "#{n}"
    	elsif n.between?(60, 599) && (10 > div)
    		return "00:" + "0#{n/60}:" + "0#{n%60}"
    	elsif n.between?(60, 599) && (10 < div)
    		return "00:" + "0#{n/60}:" + "#{div}"
    	elsif n.between?(600, 3599) && (10 > div)
    		return "00:#{n/60}:" + "0#{div}"
    	elsif n.between?(600, 3599) && div.between?(10, 59)
    		return "00:#{n/60}:" + "#{div}"	
    	elsif n.between?(3600, 35999) && div1.between?(60, 599) && div2 < 10
    		return "0#{n/3600}:"+ "0#{div1/60}:" + "0#{div2}"
    	elsif n.between?(3600, 35999) && div1.between?(60, 599) && div2 >= 10
    		return "0#{n/3600}:"+ "0#{div1/60}:" + "#{div2}"
    	elsif n.between?(3600, 35999) && div1.between?(600, 3599) && div2 < 10 
    		return "0#{n/3600}:"+ "#{div1/60}:" + "0#{div2}"
    	elsif n.between?(3600, 35999) && div1.between?(600, 3599) && div2 >= 10 
    		return "0#{n/3600}:"+ "#{div1/60}:" + "#{div2}"
    	end
    end 
end 

@timer = Timer.new