#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /vivado_proj/spk_packet_protocol/tx/spk_tx/spk_tx/solution1/.autopilot/db/a.g.bc ${1+"$@"}
