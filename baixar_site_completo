# cat baixar_site_completo.sh
#!/bin/bash
clear
date +'%d/%m/20%y %H:%M:%S'
echo

echo -n "Digite a URL para fazer o download, com www"
        read valor_digitado
echo

`wget -r -erobots=off -A ".gif" http://$valor_digitado`
`wget -r -erobots=off -A ".jpg" http://$valor_digitado`
`wget -r -erobots=off -A ".swf" http://$valor_digitado`
`wget -r -erobots=off -A ".pdf" http://$valor_digitado`

`wget -r -A ".gif" http://$valor_digitado`
`wget -r -A ".html" http://$valor_digitado`
`wget -r -A ".pdf" http://$valor_digitado`
`wget -m http://$valor_digitado`

