- view: vw_underwriting
  sql_table_name: vw_Underwriting
  fields:

  - dimension: vw_underwriting_id
    primary_key: true
    type: int
    sql: ${TABLE}.vw_Underwriting_Id

  - dimension_group: date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateCopiedFromEpicDart

  - dimension: loan_id
    type: int
    sql: ${TABLE}.LoanId

  - dimension: outcome_response
    sql: ${TABLE}.OutcomeResponse

  - dimension_group: time_stamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TimeStamp

  - dimension: und_transaction_id
    sql: ${TABLE}.UndTransactionId

  - dimension: underwriting_company_name
    sql: ${TABLE}.UnderwritingCompanyName

  - dimension: underwriting_cost
    sql: ${TABLE}.UnderwritingCost

  - measure: count
    type: count
    drill_fields: [vw_underwriting_id, underwriting_company_name]

