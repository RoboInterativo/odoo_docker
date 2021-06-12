export modules=`ls extra-addons `
export modules_comma=`echo  $modules |sed 's/ /,/g'`
#docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons  \
#-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  init translation

#docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons \
#-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  \
#init module  $modules_comma
#iCashBox,iCashStyles,icash_menu_hide,Point of Sale ICash,Extra access groups for menus 

docker run  -v `pwd`/config:/etc/odoo  --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons  \
-v  `pwd`/odoo:/opt/project/odoo \
-v odoo-web:/var/lib/odoo  \
-p 8069 -p 8072 -p 8071:8071 --name odoo -h odoo  -it myodoo  bash

#init update-module pos-sale,pos_restaurant
#init translation
#  init module icash_fixedinit translation
#init module icash_fixed
# init translation
#  init module  $modules_comma
#init module  icash
#$modules_comma
#init translation
#$modules_comma
#icash_odoo_styles
#$modules_comma
# -v `pwd`/web/:/var/lib/odoo \

#-v `pwd`/odo:/usr/lib/python3/dist-packages/odoo \

