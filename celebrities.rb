require_relative "testing_library"

celebs = ["Britney", "Miley", "Madonna", "Cher", "Bruno", "Michael"]

def how_many_celebrities(celebs)
  celebs.length
end


def name_lengths(celebs)
  celebs.map do |c|
    c.length
  end
end


def reverse_celebrity_names(celebs)
  celebs.map do |c|
    c.reverse
  end
end


def first_three_celebrities_with_each(celebs)
  first_three_celebs = []
  counter = 0

  celebs.each do |celeb|
    first_three_celebs << celeb
    counter = counter + 1

    if counter == 3
      break
    end

  end

  first_three_celebs
end


def first_three_celebrities_without_each(celebs)
  celebs[0..2]
end


def reverse_case_celebrities_names(celebs)
  array = []
  celebs.map do |c|
    array << c.swapcase
  end
  array
end


def sum_of_all_celebrity_name_lengths(celebs)
  celebs.join.length
end


def celebrities_with_long_names(celebs)
  array = []

  celebs.each do |celeb_name|
    if celeb_name.length > 5
      array << true
    else
      array << false
    end
  end

  array
end


check("how_many_celebrities", how_many_celebrities(celebs) == 6)
check("name_lengths", name_lengths(celebs) == [7, 5, 7, 4, 5, 7])
check("reverse_celebrity_names", reverse_celebrity_names(celebs) == ["yentirB", "yeliM", "annodaM", "rehC", "onurB", "leahciM"])
check("first_three_celebrities_with_each", first_three_celebrities_with_each(celebs) == ["Britney", "Miley", "Madonna"])
check("first_three_celebrities_without_each", first_three_celebrities_without_each(celebs) == ["Britney", "Miley", "Madonna"])
check("reverse_case_celebrities_names", reverse_case_celebrities_names(celebs) == ["bRITNEY", "mILEY", "mADONNA", "cHER", "bRUNO", "mICHAEL"])
check("sum_of_all_celebrity_name_lengths", sum_of_all_celebrity_name_lengths(celebs) == 35)
check("celebrities_with_long_names", celebrities_with_long_names(celebs) == [true, false, true, false, false, true])
