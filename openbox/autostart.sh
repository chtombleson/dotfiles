#!/bin/bash

##################################################
# GLOBAL VARS
##################################################
OPENBOX_CONF_DIR=$HOME/.config/openbox
CONF_DIR=$OPENBOX_CONF_DIR/conf
TINT_DIR=$CONF_DIR/tint2
CONKY_DIR=$CONF_DIR/conky
WALLPAPER_PATH=$OPENBOX_CONF_DIR/wallpaper.png

##################################################
# SET WALLPAPER
##################################################
feh --bg-scale $WALLPAPER_PATH

##################################################
# AUTOSTART PROGRAMS
##################################################

# Tint 2
(sleep 2 && tint2 -c $TINT_DIR/tint2rc) &

# Conky
(sleep 2 && conky -c $CONKY_DIR/conkyrc) &
