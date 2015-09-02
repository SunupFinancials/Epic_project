- view: epic_loan_early_payoff_recalculation
  derived_table:
    sql: |
      SELECT FullName
          ,DisplayNumber
          ,NextPaymentDate
          ,UnpaidNSFLateFee
          ,CalendarDate
          ,NewPayoffAmount
          ,DaysTillPayday 
          ,NextPaydayPayoff
      FROM [EpicLoan_090S].[BCData].[EpicLoanEarlyPayoffReCalculation] 
      WHERE ({% condition displaynumber_f %} EpicLoanEarlyPayoffReCalculation.displaynumber {% endcondition %})

  fields:
  - filter: displaynumber_f
    label: 'Account Filter'
    type: string
  
  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: newpayoffamount
    type: sum
    label: 'Todays Payoff Amount'
    sql: ${TABLE}.newpayoffamount
    
  - measure: newpayoffamount_withfees
    type: sum
    label: 'Todays Payoff Amount w/Fees'
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

  - dimension: unpaidnsflatefee
    type: number
    label: 'NSF & Late Fees'
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
  
