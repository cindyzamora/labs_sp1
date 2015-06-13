module Laboratorio1
  
  def palindromo?(palindromo)
    chars = palindromo.delete(" ").split(//)
    chars_length = chars.count - 1
    cycle = chars_length / 2
    i = 0
    cycle.times do
      unless chars[i] == chars[chars_length]
        return palindromo + " -> No es palindromo"
      end
      i += 1
      chars_length -= 1
    end 
    palindromo + " -> Es un palindromo"
  end
  
  def cuenta_palabras(sentence)
    hash = Hash.new
    words = sentence.split

    words.each do |value| 
      temp = hash[value]
      if temp
        hash[value] = temp + 1
      else
        hash_count = {value => 1}
        hash.merge!(hash_count)
        nuevo_hash = nil
      end
    end

    hash
  end
  
  def char_count(word, char)
    temp = word.split(//)
    ocurrencias=0
    temp.each do |value|
      if value == char
        ocurrencias += 1
      end
    end
    ocurrencias
  end
  
  def sort(array,mayor)
    if mayor 
      for j in 1...array.size
        key = array[j]
        i = j - 1
        while i >= 0 and array[i] > key
          array[i + 1] = array[i]
          i = i - 1
        end
        array[i + 1] = key
      end
      array
    else
      for j in 1...array.size
        key = array[j]
        i = j - 1
        while i >= 0 and array[i] < key
          array[i + 1] = array[i]
          i = i - 1
        end
        array[i + 1] = key
      end
      array
    end
    return array
  end
  
  def atoi (word)
    exponente = word.length
    temp      = word.split(//)
    temp.each do |val| end
  end
  
end


class Dessert

  attr_accessor :name
  attr_accessor :calories
  
  @@count = 0
  
  def initialize(name, calories)
    @@count += 1
        @name     = name
        @calories = calories
    end

  def healthy?            
    if self.calories <= 200
      return true
    else
      return false
    end
  end

  def delicious?
    return true
    end

    def to_s
      "#{self.name} contiene #{self.calories} calorias"
    end
    
    def Dessert.count
      return @@count
    end
end

class JellyBean < Dessert

  attr_accessor :flavor
  
    def initialize(name, calories, flavor)
      super name,calories 
      @flavor = flavor
    end

    def delicious?
      if self.flavor == "black licorice"
        return false
      else
        return true
      end
    end

    def to_s
      "Postre JellyBean de #{self.calories} calorias, sabor #{self.flavor}"
    end
end


class Test
  include Laboratorio1

  test = Test.new
  dessert = Dessert.new("pastel",300)
  chocolate = JellyBean.new("Chocolate",100,"chocolate")
  black = JellyBean.new("Black Licorice",100,"black licorice")

  puts "********* Palindromo ***********"
  puts test.palindromo?("yo hago yoga hoy")
  puts test.palindromo?("Parece que va a llover")
  
  puts "\n\n********* Cuenta Palabras ***********"
  puts "Mi mama me mima" , test.cuenta_palabras("Mi mama me mima mi mama") 


  puts "\n\n********* Cuenta Char ***********" 
  puts "'Parangaricutirimicuaro' contiene #{test.char_count("Parangaricutirimicuaro","a")} ocurrencias\n\n"
  

  puts "\n\n********* Sort ***********" 
  puts "Ordenando ascendentemente [7, 4, 0, 9, 3, 2, 6, 1]  #{test.sort([7, 4, 0, 9, 3, 2, 6, 1], true)}"
  puts "\nOrdenando descendentemente [7, 4, 0, 9, 3, 2, 6, 1]  #{test.sort([7, 4, 0, 9, 3, 2, 6, 1], false)}"

  puts "\n\n********* Dessert ***********" 
  puts "#{chocolate} delicious? #{chocolate.delicious?}, healthy? #{chocolate.healthy?}"
  puts "#{dessert} delicious? #{dessert.delicious?}, healthy? #{dessert.healthy?}"
  puts "#{black} delicious? #{black.delicious?}, healthy? #{black.healthy?}"
  puts "Total de postres #{Dessert.count}\n"
  
end




