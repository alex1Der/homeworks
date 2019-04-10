def task_2(string)
  array = []
  string.each_line do |line|
    send = line[/^.* - -/]
    date = line[/[\[].*[\]]/]
    rec = line[/T .* H/]
    if send && date && rec
      array << "#{date[1..-2]} FROM: #{send[0..-4]} TO: #{rec[1..-3].upcase}"
    end
  end
  array
end
