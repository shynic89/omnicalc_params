class CalculationsController < ApplicationController
  def flex_square
      @user_number = params["a_number"].to_i
      @squared_number = @user_number**2
      render("calculations/flexible_square_template.html.erb")
  end
    
    def flex_square_root
      @user_number = params["a_number"].to_i
      @square_root = @user_number**0.5
      render("calculations/flexible_square_root_template.html.erb")
    end
    
      def flex_payment
      
      @rate = params["basis_points"].to_f / 10000 / 12
      @months = params["number_of_years"].to_i * 12
      @pv = params["present_value"].to_i
      @multiply = (1 + @rate)**(-@months)
      @monthlypay = @rate * @pv / (1 - @multiply )
      
      render("calculations/flexible_payment_template.html.erb")
      end
      def flex_random
      
      @min = params["min"].to_i
      @max = params["max"].to_i
      @random = rand(@min...@max)
      
      render("calculations/flexible_random_template.html.erb")
      end
      
      def square_form
    
     render("calculations/square_form_template.html.erb")    
      end
  def process_square
      @user_number = params["the_user_number"].to_i
      @squared_number = @user_number**2
     render ("calculations/square_results_template.html.erb") 
  end
  
  def square_root_form
       render("calculations/square_root_form_template.html.erb") 
  end
  
  def process_square_root
      @user_number = params["the_user_number"].to_i
      @square_root = @user_number**0.5
      render ("calculations/square_root_results_template.html.erb")
  end
  
  def payment_form
      render("calculations/payment_form_template.html.erb")
  end
  
  def process_payment
      
      @rate = params["rate"].to_f / 100 / 12
      @months = params["years"].to_i * 12
      @pv = params["principal"].to_i
      @multiply = (1 + @rate)**(-@months)
      @monthlypay = @rate * @pv / (1 - @multiply )
      
      render("calculations/payment_results_template.html.erb")
  end
  
  def random_form
      render("calculations/random_form_template.html.erb")
  end
  
  def process_random
    
      @min = params["minimum"].to_f
      @max = params["maximum"].to_f
      @random = rand(@min...@max)
      render("calculations/random_results_template.html.erb")
  end
  
end
    