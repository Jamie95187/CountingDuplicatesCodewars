class Duplicates
  def count(text)
    duplicate = {}
    duplicates_array = []
    text.split('').each do |char|
      duplicate.has_key?(char) ? duplicates_array << char : duplicate[char] = 1
    end
    return 0 if duplicates_array.empty?
    duplicates_array.uniq.length
  end
end
