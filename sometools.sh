#!/bin/bash

oc() {
	if dpkg -l | grep -q nmap; then
        echo "Nmap já está instalado."
    else
        sudo apt install -y nmap
    fi

    if dpkg -l | grep -q sqlmap; then
        echo "SQLmap já está instalado."
    else
        sudo apt install -y sqlmap
    fi

    if dpkg -l | grep -q nikto; then
        echo "Nikto já está instalado."
    else
        sudo apt install -y nikto
    fi

        if dpkg -l | grep -q libimage-exiftool-perl; then
        echo "ExifTool já está instalado."
    else
        sudo apt install -y libimage-exiftool-perl
    fi

    if dpkg -l | grep -q steghide; then
        echo "Steghide já está instalado."
    else
        sudo apt install -y steghide
    fi

}

on(){
        if dpkg -l | grep -q cowsay; then
        echo "cowsay já está instalado."
    else
        sudo apt install -y cowsay
    fi

    if dpkg -l | grep -q lolcat; then
        echo "lolcat já está instalado."
    else
        sudo apt install -y lolcat
    fi

    if dpkg -l | grep -q fortune; then
        echo "fortune já está instalado."
    else
        sudo apt install -y fortune
    fi
}

ou() {

    if dpkg -l | grep -q htop; then
        echo "htop já está instalado"
    else
        sudo apt install htop
    fi

}


if [ "$1" = "A" ] || [ "$1" = "ALL" ] || [ "$1" = "all" ]; then
	echo "Instalando todos pacotes"	
	oc
    ou
    on

elif [ "$1" = "man" ]; then
        echo "man - manual"
        echo "A, ALL, all - Todas"
        echo "oc - Only CyberSecurity"
        echo "on - Only Nonsense"
        echo "ou - Only Utilities"

elif [ "$1" = "oc" ]; then
        echo "--- Only CyberSecurity ---"
        oc

elif [ "$1" = "on" ]; then
        echo "--- Only Nonsense ---"
        on

elif [ "$1" = "ou" ]; then
        echo "--- Only Utilitis ---"
        ou

else
	echo "Nenhuma ferramenta instalada"

fi
