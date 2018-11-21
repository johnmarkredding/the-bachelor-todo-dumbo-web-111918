def get_first_name_of_season_winner(data, season)
  first_name = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      first_name = contestant["name"].split(' ')[0]
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, arr|
    arr.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, arr|
    arr.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, arr|
    arr.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  avg = 0.0
  data[season].each do |x|
    avg += x["age"].to_i
  end
  avg = (avg /= data[season].size).round
  avg = avg.round
end
