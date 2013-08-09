; Show a taskbar balloon indicating the current step
showTip(step, content) {
	TrayTip, Step %step% of 37, %content%, 20000, 1
}

; Add a log entry
log(step, text) {
	global LogLoc
	
	FormatTime, now, , M/d/yyyy h:m:s tt
	FileAppend, %step%`n%now%`n**********************************`n%text%`n`n`n, %LogLoc%
}

; Create a file

; Fetch the Wizard Step Number from the configuration file
fetchStep() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 1
		return line
	} else {
		return 1
	}
}

; Fetch the Administration Step Number from the configuration file
fetchAdminStep() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 2
		return line
	} else {
		return 1
	}
}

; Fetch the Standard Step Number from the configuration file
fetchStdStep() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 3
		return line
	} else {
		return 1
	}
}

; Fetch the Operating System Name from the configuration file
fetchOSName() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 4
		return line
	} else {
		return Windows 8
	}
}

; Fetch the Operating System Type from the configuration file
fetchOSType() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 5
		return line
	} else {
		return 64-bit
	}
}

; Fetch the Operating System Key from the configuration file
fetchOSKey() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 6
		return line
	} else {
		return 
	}
}

; Fetch the Time Zone from the configuration file
fetchTimeZone() {
	global ConfigFileLoc

	IfExist, %ConfigFileLoc%
	{
		FileReadLine, line, %ConfigFileLoc%, 7
		return line
	} else {
		return 
	}
}