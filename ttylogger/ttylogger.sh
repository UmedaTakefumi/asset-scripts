#!/bin/bash


function get_ttyname () {

  local TTY_NAME

  if [ "$(uname)" == 'Darwin' ]; then
    OS='Mac'
    # macos pattern
    #TTYNAME=

  elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    OS='Linux'
    TTY_NAME=$(tty | awk -F/ '{ print $(NF -1)(NF)  }')

  elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
    OS='Cygwin'
    # linux pattern
    #TTYNAME=

  else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
  fi

  #return ${TTY_NAME}
  echo ${TTY_NAME}

}

function get_datetimestamp () {

  local DATE_TIME_STAMP

  DATE_TIME_STAMP=$(date "+%Y%m%d")

  echo ${DATE_TIME_STAMP}
}

function check_dir () {

  echo $a

}

#--------------------------------------------------------------------------

# main
TTY_NAME=$(get_ttyname) 
echo $TTY_NAME

DATE_TIME_STAMP=$(get_datetimestamp)
echo ${DATE_TIME_STAMP}

LOG_DIR=${HOME}/.ttylog
echo ${LOG_DIR}


