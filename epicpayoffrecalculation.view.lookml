- view: loan_payoff_new
  derived_table:
    sql: |
          SELECT FullName
            ,DisplayNumber
            ,NextPaymentDate = CAST(NextPaymentDate as DATE)
            ,calendardate = CAST(PayoffAsOfDate as DATE)
            ,CurrentBalanceAmount = EndingBalance
            ,UnpaidNSFLateFee = OutstandingNsfFee + OutstandingLateFee
            ,ProratedPayoff = CSOFeePerPayment 
            ,TotalPayoffAmount = EndingBalance + OutstandingNsfFee + OutstandingLateFee + CSOFeePerPayment
            ,TotalPayoffAmount50percent = ((EndingBalance + OutstandingNsfFee + OutstandingLateFee + CSOFeePerPayment) *.50)
            ,TotalPayoffAmount25percent = ((EndingBalance + OutstandingNsfFee + OutstandingLateFee + CSOFeePerPayment) *.25)
            FROM SunUpODStage.SUMaster.vw_CustomerLoanStatementOfAccountToDate_2 
          WHERE {% condition displaynumber_f %} displaynumber {% endcondition %}


  fields:
  - filter: displaynumber_f
    label: 'Account Filter'
    type: string
    suggestions: [000000000-00]
  
  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: currentbalanceamount
    type: sum
    label: 'Current Balance Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.currentbalanceamount
    
  - measure: unpaidnsflatefee
    type: sum
    label: 'Unpaid NSF/Late Fess Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.unpaidnsflatefee
  
  - measure: proratedpayoff
    type: sum
    label: 'Prorated CSO Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.proratedpayoff
    
  - measure: totalpayoffamount
    type: sum
    label: 'Payoff Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.totalpayoffamount
    
  - measure: totalpayoffamount50percent
    type: sum
    label: '50% of Payoff Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.totalpayoffamount50percent
    
  - measure: totalpayoffamount25percent
    type: sum
    label: '25% of Payoff Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.totalpayoffamount25percent
    
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
  
