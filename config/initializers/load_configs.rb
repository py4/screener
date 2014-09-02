lines = File.readlines(File.join(Rails.root, 'app', 'assets', 'questions'))
c = lines[0].strip.to_i
CHOICES = {}
lines[1..c].map { |l| l.strip }.each_with_index do |l,i|
	CHOICES[l] = lines[c+i+1].to_i
end
QUESTIONS = lines[2*c+1..-1].map { |l| l.strip }
