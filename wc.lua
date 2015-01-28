#!D:\workspace\lua\luaStudy\5.1\lua.exe
--This is a lua script about word/char/line counts
--Which is imitate the linux command wc
--Reference from http://en.literateprograms.org/index.php?title=Special:DownloadCode/Word_count_%28Lua%29&oldid=10564
--tao
--2015/01/28


tot_words = 0
tot_lines = 0
tot_chars = 0
opts      = ""


--The number of input files
nfiles    = 0 
--Printing the right results
function printwc(lines,words,chars,fname)
	if(string.find(opts,"l")) then
		io.write(string.format("%8d",lines))
	end
	if(string.find(opts,"w")) then
		io.write(string.format("%8d",words))
	end
	if(string.find(opts,"c")) then
		io.write(string.format("%8d",chars))
	end
	if(fname ~= "-") then
		io.write(" "); print(fname)
	else
		print()
	end
end

--Counting work
function wc(fname)
	chars = 0
	words = 0
	lines = 0
	
	if(fname == "-") then 
		it = io.lines()
	else
		it = io.lines(fname) 
	end
	for line in it do
		lines = lines + 1
		for word in string.gmatch(line, "[^%s]+") do
			words = words + 1
		end
		chars = chars + string.len(line) + 1 
	end
	printwc(lines,words,chars,fname)
	tot_chars = tot_chars + chars
	tot_words = tot_words + words
	tot_lines = tot_lines + lines
end
for i = 1, #arg do
    if(nfiles == 0 and string.sub(arg[i],1,1) =="-") then
	    opts = opts .. arg[i]
    else 
	    if(string.len(opts) == 0) then
		    opts = "wcl"
	    end
	    wc(arg[i])
	    nfiles = nfiles + 1
    end
end

if(string.len(opts) == 0) then
	opts = "wcl"
end
if(nfiles < 1) then
	wc("-")
end
if(nfiles > 1) then
	printwc(tot_lines,tot_words,tot_chars,"total")
end




