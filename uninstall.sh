#!/bin/bash

 # HUE is an Unix filesystem 256-bit AES encryptor.
 # Copyright (C) 2019 Entynetproject <Ivan Nikolsky>
 #

 # Modified BSD License
 #
 #        Redistribution and use in source and binary
 # forms, with or without modification, are permitted
 # provided that the following conditions are met:
 #
 # 1. Redistributions of source code must retain the
 #    above copyright notice, this list of conditions
 #    and the following disclaimer.
 # 2. Redistributions in binary form must reproduce the
 #    above copyright notice, this list of conditions
 #    and the following disclaimer in the documentation
 #    and/or other materials provided with the
 #    distribution.
 # 3. The name of the author may not be used to endorse
 #    or promote products derived from this software
 #    without specific prior written permission.
 #
 # THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS''
 # AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING
 # BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 # ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE
 # LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 # NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 # SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 # INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 # LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
 # TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 # ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 # ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
RS="\033[1;31m"
YS="\033[1;33m"
CE="\033[0m"

if [[ $EUID -ne 0 ]]
then
   sleep 1
   echo -e "["$RS"*"$CE"] "$RS"This script must be run as "$YS"root"$C"" 1>&2
   sleep 1
   exit
fi
 
{
rm /usr/local/bin/honey
rm /bin/honey
rm -r ~/honey 
} &> /dev/null
