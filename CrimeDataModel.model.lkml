connection: "sqlserver"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
#
explore: incidents_dsh_msk {
  label: "Incidents"
  view_label: "Incidents"
}

# explore: incident_trends {
#   label: "Incident Trends"
#   view_label: "Incidents"
# }


#  This is an example access_filter used to showcase the incident table
#
#  access_filter: {
#     field: incidents_dsh_msk.cv_legend
#     user_attribute: isvandalism
#   }


# map_layer: {
#   file: "/sample_data_beats.json"
# }
