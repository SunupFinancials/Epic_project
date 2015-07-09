- view: tbl_spv1_loans
  sql_table_name: tbl_SPV1_Loans
  fields:

  - dimension: loan_display_number
    sql: ${TABLE}.LOAN_DisplayNumber

  - dimension: loan_id
    sql: ${TABLE}.LOAN_Id

#  - dimension: no
#    sql: ${TABLE}.No

  - dimension_group: transfer
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Transfer_Date

  - measure: count
    type: count
    drill_fields: []

