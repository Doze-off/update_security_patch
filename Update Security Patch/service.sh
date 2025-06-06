#!/system/bin/sh

novo_patch="2025-06-05"
# Aplica as mudanças
resetprop -n ro.build.version.security_patch "$novo_patch"
resetprop -n ro.vendor.build.security_patch "$novo_patch"
