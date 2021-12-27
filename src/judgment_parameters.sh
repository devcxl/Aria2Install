#!/bin/bash
# 根据参数选择命令标记
judgment_parameters() {
  while [[ "$#" -gt '0' ]]; do
    case "$1" in
    'install')
      INSTALL='1'
      break
      ;;
    'remove')
      REMOVE='1'
      ;;
    'reconfig')
      RECONFIG='1'
      ;;
    'version')
      VERSION='1'
      break
      ;;
    'help')
      HELP='1'
      break
      ;;
    *)
      echo "$0: unknown option -- -, See: $0 help"
      exit 1
      ;;
    esac
    shift
  done
}
