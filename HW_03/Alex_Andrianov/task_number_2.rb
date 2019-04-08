def task_2(string)
  array = []
  string.each_line do |line|
    sender = line[/^.* - -/]
    date = line[/[\[].*[\]]/]
    receiver = line[/T .* H/]
    if sender && date && receiver
      array<<"#{date[1..-2]}FROM:#{send[0..-4]}TO:#{receive[1..-3].upcase}"
    end
  end
  array
end
