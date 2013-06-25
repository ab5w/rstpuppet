#
#   Just a little script to restart puppet and tail the log, to pickup the
#   new catalog and check it's doing stuff/what it errors on. 
#   
#   To use just type 'rstpuppet' in your shell.
#   
#   Copyright (C) 2013 Craig Parker <craig@paragon.net.uk>
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; If not, see <http://www.gnu.org/licenses/>.
#
#

class rstpuppet {

    if $::osfamily == 'redhat' {
           
            file { '/usr/local/sbin/rstpuppet':
                source => "puppet:///modules/rstpuppet/rstpuppet.redhat",
                mode => 0754,
            }
        

    } elsif $::osfamily == 'debian' {

                file { '/usr/local/sbin/rstpuppet':
                source => "puppet:///modules/rstpuppet/rstpuppet.debian",
                mode => 0754,
            }

    }    
    
}
