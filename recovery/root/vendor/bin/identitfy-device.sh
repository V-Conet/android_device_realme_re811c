#!/system/bin/sh

is_RMX3142() {
    echo "Setup props for RMX3142"
    resetprop "ro.build.product" "RMX3142"
    resetprop "ro.product.model" "RMX3142"
    resetprop "ro.product.device" "RE811C"
    resetprop "ro.product.product.device" "RE811C"
    resetprop "ro.commonsoft.ota" "RE811C"
    resetprop "ro.separate.soft" "2065C"
}

is_PEGM00() {
    echo "Setup props for PEGM00"
    resetprop "ro.build.product" "PEGM00"
    resetprop "ro.product.model" "PEGM00"
    resetprop "ro.product.device" "OP4E8F"
    resetprop "ro.product.product.device" "OP4E8F"
    resetprop "ro.commonsoft.ota" "OP4E8F"
    resetprop "ro.separate.soft" "20111"
}

is_PEXM00() {
    echo "Setup props for PEXM00"
    resetprop "ro.build.product" "PEXM00"
    resetprop "ro.product.model" "PEXM00"
    resetprop "ro.product.device" "OP4E9F"
    resetprop "ro.product.product.device" "OP4E9F"
    resetprop "ro.commonsoft.ota" "OP4E9F"
    resetprop "ro.separate.soft" "20127"
}

project=$(cat /proc/oplusVersion/prjName)
echo $project

case $project in
"2065C")
    is_RMX3142
    ;;
"20111")
    is_PEGM00
    ;;
"20127")
    is_PEXM00
    ;;
*)
    is_RMX3142
    ;;

esac

exit 0
