$shell_app=new-object -com shell.application;
$filename = "sysdll.zip";
$zip_file = $shell_app.namespace((Get-Location).Path + "\$filename");
$destination = $shell_app.namespace((Get-Location).Path);
$destination.Copyhere($zip_file.items());
