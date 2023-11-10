# @kai_verse
# Module extended 
# Here all variable
# You can join our channel at https://kai_verse.tme

# Variable
DUBUG_FLAG=false
SKIPMOUNT=false

MODULE_DATE=`grep_prop module_date $TMPDIR/module.prop`
TOO_EARLY_DATE=`grep_prop too_early_date $TMPDIR/module.prop`
BUILD_DATE=`getprop ro.system.build.date`
    
# As system prop modified 
PROPFILE=false

# Running Post-fs service
POSTFSDATA=false

# Running Late service 
LATESTARTSERVICE=false

# Replace File or folder
REPLACE=""

# Grep android version
var_version="`grep_prop ro.build.version.release`"

# Grep Miui version
var_MIUI_version="`grep_prop ro.miui.ui.version.name`"

# Module version
module_version="`grep_prop version $TMPDIR/module.prop`"

# Module name
module_name="`grep_prop name $TMPDIR/module.prop`"

# Module id
module_id="`grep_prop id $TMPDIR/module.prop`"

# Authority
module_author="`grep_prop author $TMPDIR/module.prop`"

# Required version 
module_require_version="`grep_prop require_version $TMPDIR/module.prop`"

# Device required 
module_require_device="`grep_prop require_device $TMPDIR/module.prop`"

# required miui
module_require_MIUI_version="`grep_prop require_MIUI_version $TMPDIR/module.prop`"

# Print all
MIUI_VERSION="`getprop ro.system.build.version.incremental`"
id="`grep_prop id $TMPDIR/module.prop`"
var_device="`getprop ro.product.device`"
var_version="`grep_prop ro.build.version.release`"

# Checking
    if [ $API -lt 30 ] || [ $API -gt 33 ] ; then
        ui_print " "
        ui_print " *Warning: Unavailable for 
        current Android version!"
        ui_print " "
        ui_print " - Install exited"
        ui_print " "
        sleep 2
        Warning=true
        exit 1
    fi
  
  ui_print "*******************************************"
  ui_print "   $module_name "
  ui_print "   author: $module_author"
  ui_print "   version: $module_version"
  sleep 2
  ui_print "*******************************************"
  ui_print "   ** Device Information **"
  ui_print "   device: $var_device"
  ui_print "   Android: $var_version"
  ui_print "   Android API: $API"
  ui_print "   MIUI: $MIUI_VERSION"
  sleep 2
  ui_print "*******************************************"
  ui_print " "
  ui_print " "
  sleep 2
  ui_print "*******************************************"
  ui_print " Installation executed..."
sleep 1
ui_print "- Done.."
  