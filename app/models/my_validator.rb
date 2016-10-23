class MyValidator < ActiveModel::Validator
  def validate(record)
    options = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    unless record.title == nil
      if options.any? { |word| record.title.include?(word) }
      else
        record.errors[:base] << "Not clickbaity"
      end
    end
  end
end
