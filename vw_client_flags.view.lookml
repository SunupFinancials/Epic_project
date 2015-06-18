- view: vw_client_flags
  sql_table_name: vw_ClientFlags
  fields:

  - dimension: vw_client_flags_id
    primary_key: true
    type: int
    sql: ${TABLE}.vw_ClientFlags_Id

  - dimension: client_id
    type: int
    sql: ${TABLE}.ClientId

  - dimension_group: date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateCopiedFromEpicDart

  - dimension_group: flag_date_added
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FlagDateAdded

  - dimension: flag_name
    sql: ${TABLE}.FlagName

  - measure: count
    type: count
    drill_fields: [vw_client_flags_id, flag_name]

