class ApplicationController < ActionController::Base

    helper_method  'date_start',
                   'date_end'
                
  def date_start
    1990
  end

  def date_end
    Date.today.year
  end

end
