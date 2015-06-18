- view: tbl_rpt_cutoff
  sql_table_name: tbl_RPT_Cutoff
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.Id

  - dimension: ach_endpoint
    sql: ${TABLE}.AchEndpoint

  - dimension: assigned_agent
    sql: ${TABLE}.AssignedAgent

  - dimension: credit_reason
    type: int
    sql: ${TABLE}.CreditReason

  - dimension_group: effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EffectiveDate

  - dimension: fees_amount
    sql: ${TABLE}.FeesAmount

  - dimension: finance_fee
    sql: ${TABLE}.FinanceFee

  - dimension: is_debit
    type: int
    sql: ${TABLE}.IsDebit

  - dimension: is_origination
    type: int
    sql: ${TABLE}.IsOrigination

  - dimension: late_fee
    sql: ${TABLE}.LateFee

  - dimension: loan_id
    type: int
    sql: ${TABLE}.LoanId

  - dimension: nsf_fee
    sql: ${TABLE}.NsfFee

  - dimension: payment_agent
    sql: ${TABLE}.PaymentAgent

  - dimension: payment_amount
    sql: ${TABLE}.PaymentAmount

  - dimension: payment_status
    sql: ${TABLE}.PaymentStatus

  - dimension: payment_type
    sql: ${TABLE}.PaymentType

  - dimension: principle
    sql: ${TABLE}.Principle

  - dimension: return_code
    sql: ${TABLE}.ReturnCode

  - dimension_group: return
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReturnDate

  - dimension_group: success
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SuccessDate

  - measure: count
    type: count
    drill_fields: [id]

