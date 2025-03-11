
sleep 2
ui_print " • Informações do módulo "
sleep 0.5
ui_print " • Nome            : Update security patch"
sleep 0.5
ui_print " • Desenvolvedor   : @NedTOP "
sleep 1

# Obtém o novo patch
novo_patch="2025-03-05"
# Obtém os patches atuais
current_patch=$(getprop ro.build.version.security_patch)
vendor_patch=$(getprop ro.vendor.build.security_patch)

# Exibe as informações na instalação
ui_print ""
ui_print "📌 Patch de Segurança Atual: $current_patch"
ui_print "📌 Patch de Segurança do Vendor: $vendor_patch"
sleep 1

ui_print ""
echo "🔄 Aplicando novo patch: $novo_patch"
ui_print " "
sleep 1

# Chama o script service.sh para aplicar as mudanças
ui_print ""
ui_print "🚀 Configurando patches..."
chmod +x "$MODPATH/service.sh"
"$MODPATH/service.sh"
sleep 5

ui_print ""
ui_print "✅ Patch de segurança aplicado com sucesso!"
ui_print " "
sleep 1