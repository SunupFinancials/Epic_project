- view: tbl_time_tracker
  sql_table_name: tbl_TimeTracker
  fields:

  - dimension_group: endtime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Endtime

  - dimension: misc
    sql: ${TABLE}.Misc

  - dimension: process_name
    sql: ${TABLE}.ProcessName

  - dimension: result
    sql: ${TABLE}.Result

  - dimension_group: starttime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Starttime

  - dimension: time_tracker_id
    type: int
    sql: ${TABLE}.TimeTrackerID

  - dimension: total_time_in_seconds
    type: int
    sql: ${TABLE}.TotalTimeInSeconds

  - measure: count
    type: count
    drill_fields: [process_name]

