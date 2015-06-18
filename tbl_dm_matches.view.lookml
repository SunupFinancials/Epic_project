- view: tbl_dm_matches
  sql_table_name: tbl_DM_matches
  fields:

  - dimension: dm_date
    sql: ${TABLE}.DM_Date

  - dimension: dm_display_number
    sql: ${TABLE}.DM_DisplayNumber

  - dimension: dm_last_name
    sql: ${TABLE}.DM_LastName

  - measure: count
    type: count
    drill_fields: [dm_last_name]

