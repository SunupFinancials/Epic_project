- view: epic_payment_history
  derived_table:
    sql: |
         SELECTpaymentloanid  
              ,displaynumber
              ,fullname
              ,paymentduedate 
              ,nextpaymentduedate
              ,payment#
              ,originalloanamount
              ,numdayssincelastpayment = numberdays
              ,scheduledpaymentamount                
              ,appliedpayment 
              ,beginningprincipal 
              ,accruedinterest
              ,beginningbalance               
              ,appliedtoprincipal
              ,endingbalance
              ,appliedadjcreditamount
              ,totalnsflatefee
              ,annualpercentrate
              ,islastpayment
              ,ispaymenthistory
              ,isnextpayment  
          FROM (SELECT TOP 1 DisplayNumber 
              FROM [SunUpODStage].[Stage].[EpicLoanEarlyPayoffBaseData]
              WHERE {% condition displaynumber_f %} displaynumber {% endcondition %}
              ) as a
          CROSS APPLY 
              [SunUpODStage].[LMSData].[EpicLoanEarlyPayoffReCalculation_Details] (a.DisplayNumber) AS b
          WHERE [isLastPayment] = 1
             OR [isPaymentHistory] = 1
             OR [isNextPayment] = 1



  fields:
  - filter: displaynumber_f
    label: 'Account Filter'
    type: string
    suggestions: [000000000-00]
  
  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: scheduledpaymentamount
    type: sum
    label: 'Scheduled Payment Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.scheduledpaymentamount
    
  - measure: appliedpayment
    type: sum
    label: 'Payment Applied Amount'
    value_format: '$   #,##0.00'
    sql: ${TABLE}.appliedpayment

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
  
