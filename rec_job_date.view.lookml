- view: rec_job_date
  sql_table_name: Rec_Job_Date
  fields:

  - dimension: calc_records
    type: int
    sql: ${TABLE}.Calc_Records

  - dimension_group: calc_snapshot
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Snapshot_Date

  - dimension: calc_total_loans
    sql: ${TABLE}.Calc_Total_Loans

  - dimension: calc_total_payments
    sql: ${TABLE}.Calc_Total_Payments

  - dimension: table
    sql: ${TABLE}."Table"

  - measure: count
    type: count
    drill_fields: []

