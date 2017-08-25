dotfilepath = File.join(File.expand_path(File.dirname(__FILE__)), "dot")
simlinkpath = ENV["HOME"] || Dir.pwd
dotfilelist = Dir.entries(dotfilepath).select{|f| !%w(. ..).include?(f)}
backupdir = File.join(simlinkpath, "dotfilebackup_"+Time.now.strftime("%Y%m%d%H%M%S"))
Dir.mkdir(backupdir)
puts "##################################{(0...backupdir.size).map{"#"}.join}"
puts "Backing up existing dotfiles to #{backupdir}."
puts "##################################{(0...backupdir.size).map{"#"}.join}"
dotfilelist.each do |f|
  if File.exists?(filename = "#{simlinkpath}/.#{f}")
    puts filename 
    `mv #{filename} #{backupdir}/`
  end
end
puts "\n########################"
puts "Installing new dotfiles."
puts "########################"
dotfilelist.each do |f|
  puts f
  `ln -fs #{dotfilepath}/#{f} #{simlinkpath}/.#{f}`
end
puts "\nInstalling Fonts..."
`cp #{dotfilepath}/../fonts/* ~/Library/Fonts/`
puts "\nEnjoy the awesomeness!"
