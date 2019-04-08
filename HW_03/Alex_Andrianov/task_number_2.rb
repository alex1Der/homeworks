def task_2(string)
  array = []
  string.each_line do |line|
    sender = line[/^.* - -/]
    date = line[/[\[].*[\]]/]
    receiver = line[/T .* H/]
    if sender && date && receiver
      array << "#{date[1..-2]} FROM: #{sender[0..-4]}TO:#{receiver[1..-2].upcase}"
    end
  end
  array
end