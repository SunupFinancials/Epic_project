- view: loan_new_payoff
  derived_table:
    sql: |
          SELECT [FullName]
              ,DisplayNumber
              ,NextPaymentDate = CAST(x.[NextPaymentDate] as DATE)
              ,UnpaidNSFLateFee = 0.00
              ,CalendarDate = CAST(PaymentDueDate as DATE)
              ,NewPayoffAmount = [EndingBalance]
              ,NextPaydayPayoff = 0.00
          FROM [SUMaster].[vw_CustomerLoanStatementOfAccountToDate] 
          WHERE {% condition displaynumber_f %} displaynumber {% endcondition %}


  fields:
  - filter: displaynumber_f
    label: 'Account Filter'
    type: string
    suggestions: [000000000-00]
  
  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: newpayoffamount
    type: sum
    label: 'Payoff Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.newpayoffamount
    
  - measure: newpayoffamount_withfees
    type: sum
    label: 'Payoff Amount w/Fees'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.newpayoffamount+${TABLE}.unpaidnsflatefee

  - dimension: fullname
    label: 'Customer Name'
    sql: ${TABLE}.fullname

  - dimension: displaynumber
    label: 'Account Number'
    sql: ${TABLE}.displaynumber

  - dimension: nextpaymentdate
    label: 'Next Payment Due Date'
    sql: ${TABLE}.nextpaymentdate
    
  - measure: nextpaydaypayoff
    type: sum
    label: 'Next Payday Payoff Amount'
    sql: ${TABLE}.nextpaydaypayoff
    value_format: '$   #,##0.00'

  - dimension: unpaidnsflatefee
    label: 'NSF & Late Fees'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.unpaidnsflatefee

  - dimension: calendardate
    label: 'Desired Payoff Date'
    sql: ${TABLE}.calendardate

  

  sets:
    detail:
      - fullname
      - displaynumber
      - nextpaymentdate
      - unpaidnsflatefee
      - calendardate
      - newpayoffamount
  
