Configuration DSCConfiguration {
	Node $AllNodes.Where{$_.Role -eq "WebServer"}.NodeName
	{
		WindowsFeature IISInstall {
			Ensure = 'Present'
			Name = 'Web-Server'
	}
}}
