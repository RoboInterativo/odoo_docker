#export modules=`ls extra-addons |grep icash `
#export modules_comma=`echo  $modules |sed 's/ /,/g'`

export modules_comma=icash_fixed,icash_odoo_styles,icash_pos,icash_menu_hide
#docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons  \
#-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  init translation

#docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons \
#-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  \
#init module  $modules_comma
#iCashBox,iCashStyles,icash_menu_hide,Point of Sale ICash,Extra access groups for menus 

docker run  -v `pwd`/config:/etc/odoo  --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons  \
-v  `pwd`/odoo:/opt/project/odoo \
-v odoo-web:/var/lib/odoo \
-p 8069 -p 8072 -p 8071:8071 --name odoo -h odoo  -it myodoo  init module $modules_comma
#,icash_pos,icash_menu_hide
#icash_fixed\,
#icash_odoo_styles,icash_pos,icash_menu_hide
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

