#! /bin/bash
CUSTOM_BUILD_FLAGS_FILE=custom-build-flags/build_flags_stm32.sh
export FLAGS="$FLAGS -DPIO_SRC_REV="$(git log --pretty=format:%h_%ad -1 --date=short)
export FLAGS="$FLAGS -DDMX_DISABLE"
export FLAGS="$FLAGS -DMODBUS_DISABLE"
export FLAGS="$FLAGS -DOWIRE_DISABLE"
export FLAGS="$FLAGS -DDHT_DISABLE"
export FLAGS="$FLAGS -DCOUNTER_DISABLE"
if [ -f $CUSTOM_BUILD_FLAGS_FILE ]; then
    source $CUSTOM_BUILD_FLAGS_FILE
fi
 echo $FLAGS