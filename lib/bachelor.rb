require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |person|
        if person["status"] == "Winner"
          return person["name"].split()[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  city_count = 0
  data.each do |season_num, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        city_count = city_count + 1
      end
    end
  end
  city_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  age_count = 0
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |person|
        age_sum = age_sum + person["age"].to_f
        age_count = age_count + 1
      end
    end
  end
  (age_sum / age_count).round
end
