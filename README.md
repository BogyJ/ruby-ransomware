# Ruby Ransomware

* Build the Windows executable file: `ocra program.rb --no-dep-run --dll ruby_builtin_dlls\libssp-0.dll`
* Generate a 32 bytes secret key: `dd if=/dev/urandom bs=32 count=1 2>/dev/null | openssl base64`
