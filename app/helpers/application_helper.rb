module ApplicationHelper
  def display_error(record, attr_name)
    if record.errors[attr_name].present?
      record.errors[attr_name].first
    end
  end


  def display_quote()
    if Time.now.strftime("%d") == "1" or Time.now.strftime("%d") == "18"
      return 'When life gives you a hundred reasons to cry, show life that you have a thousand reasons to smile.'
    end
    if Time.now.strftime("%d") == "2" or Time.now.strftime("%d") == "19"
      return 'You only live once, but if you do it right, once is enough.'
    end
    if Time.now.strftime("%d") == "3" or Time.now.strftime("%d") == "20"
      return 'Dream as if you\'ll live forever, live as if you\'ll die today.'
    end

    if Time.now.strftime("%d") == "4" or Time.now.strftime("%d") == "21"
      return 'Remember the past, plan for the future, but live for today, because yesterday is gone and tomorrow may never come.'
    end
    if Time.now.strftime("%d") == "5" or Time.now.strftime("%d") == "22"
      return 'In three words I can sum up everything I\'ve learned about life: it goes on.'
    end
    if Time.now.strftime("%d") == "6" or Time.now.strftime("%d") == "23"
      return 'There are so many people out there who will tell you that you can\'t. what you\'ve got to do is turn around and say "watch me"'
    end
    if Time.now.strftime("%d") == "7" or Time.now.strftime("%d") == "24"
      return 'Do not go where the path may lead, go instead where there is no path and leave a trail.'
    end
    if Time.now.strftime("%d") == "8" or Time.now.strftime("%d") == "25"
      return 'It is said that your life flashes before your eyes just before you die. That is true, it\'s called Life.'
    end
    if Time.now.strftime("%d") == "9" or Time.now.strftime("%d") == "26"
      return 'The most wasted of all days is one without laughter.'
    end
    if Time.now.strftime("%d") == "10" or Time.now.strftime("%d") == "27"
      return 'As long as we have memories, yesterday remains and as long as we have hope, tomorrow awaits.'
    end
    if Time.now.strftime("%d") == "11" or Time.now.strftime("%d") == "28"
      return 'We need to be the change we wish to see in the world'
    end
    if Time.now.strftime("%d") == "12" or Time.now.strftime("%d") == "29"
      return 'I have found that if you love life, life will love you back'
    end
    if Time.now.strftime("%d") == "13" or Time.now.strftime("%d") == "30"
      return 'In the end, it\'s not going to matter how many breaths you took, but how many moments took your breath away'
    end
    if Time.now.strftime("%d") == "14" or Time.now.strftime("%d") == "31"
      return 'The best way to predict the future is to create it.'
    end
    if Time.now.strftime("%d") == "15"
      return 'Whenever you find whole world against you just turn around and lead the world.'
    end
    if Time.now.strftime("%d") == "16"
      return 'Enjoy the little things, for one day you may look back and realize they were the big things.'
    end
    if Time.now.strftime("%d") == "17"
      return 'Take the first step in faith. You don\'t have to see the whole staircase, just take the first step.'
    end
  end
end
