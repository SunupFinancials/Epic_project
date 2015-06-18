- view: vw_current_reporting_business_dates
  sql_table_name: vw_Current_ReportingBusinessDates
  fields:

  - dimension_group: current
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CurrentDate

  - dimension_group: reporting
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReportingDate

  - measure: count
    type: count
    drill_fields: []

