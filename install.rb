dotfilepath = File.join(File.expand_path(File.dirname(__FILE__)), "dot")
simlinkpath = Dir.pwd
dotfilelist = Dir.entries(dotfilepath).select{|f| !%w(. ..).include?(f)}
backupdir = simlinkpath+"/dotfilebackup_"+Time.now.strftime("%Y%m%d%H%M%S")
Dir.mkdir(backupdir)
dotfilelist.each{|f|  `mv #{simlinkpath}/.#{f} #{backupdir}/`}
dotfilelist.each{|f| `ln -fs #{dotfilepath}/#{f} #{simlinkpath}/.#{f}`}
`cp #{dotfilepath}/../fonts/* ~/Library/Fonts/`
