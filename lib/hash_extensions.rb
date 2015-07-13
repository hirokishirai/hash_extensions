require "hash_extensions/version"
module HashExtensions
  class ::Hash
    class HashExtensionsError < StandardError; end
    def swap(a=nil, b=nil)
      raise HashExtensionsError, "swap requires two or more elements in the hash." if self.count < 2
      keys = self.keys
      if a==nil && b == nil && self.count == 2
        a = 0
	b = 1
        self.replace({keys[b] => self[keys[b]], keys[a] => self[keys[a]]})
      elsif self.count >= 2 && a!=nil && b != nil
        a, b = b, a if b<a
        swaped = {}
        a.times do |i|
          swaped.merge!({keys[i] => self[keys[i]]})
        end
        swaped.merge!({keys[b] => self[keys[b]]})
        ((a+1)..(b-1)).each do |i|
          swaped.merge!({keys[i] => self[keys[i]]})
        end
        swaped.merge!({keys[a] => self[keys[a]]})
        ((b+1)..(self.count-1)).each do |i|
          swaped.merge!({keys[i] => self[keys[i]]})
        end
        self.replace(swaped)
      else
        raise HashExtensionsError, "please specify two Hash indices."
      end
    end

    def swap_only_values_of(a=nil, b=nil)
      raise HashExtensionsError, "swap_only_values_of requires two or more elements in the hash." if self.count < 2
      keys = self.keys
      if (a==nil && b == nil && self.count == 2)
        a = 0
	b = 1
      	self[keys[a]], self[keys[b]] = self[keys[b]], self[keys[a]]
      elsif self.count >= 2 && a!=nil && b != nil
      	self[keys[a]], self[keys[b]] = self[keys[b]], self[keys[a]]
      else
        raise HashExtensionsError, "please specify two Hash indices."
      end
      return self
    end
  end
  begin
  rescue => e
      puts "HashExtensionsError: #{e}"
  end
end
