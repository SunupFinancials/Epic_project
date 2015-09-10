- view: epic_loan_payment_history_forpayoff
  derived_table:
    sql: |
          SELECT FullName
                    ,a.DisplayNumber
                    ,b.PaymentLoanid
              ,TransactionEffectiveDate
              ,LoanPaymentSequence
              ,isRtnSkpPayment
              ,DailyInterestRate
              ,AppliedAdjCreditAmount
              ,TotalNSFLateFee
              ,FullName
              ,FundedAmount
              ,ScheduledPaymentAmount
              ,NumDaysSinceLastPayment
              ,AppliedPayment
              ,BeginningPrincipal
              ,AccruedInterest
              ,BeginningBalance
              ,EndingBalance
              ,AppliedtoPrincipal
              ,NumDaysCarryOver
      
                FROM (SELECT TOP 1 DisplayNumber 
                      FROM [SunUpODStage].[Stage].[EpicLoanEarlyPayoffBaseData]
                       WHERE {% condition displaynumber_f %} displaynumber {% endcondition %}
                      ) as a
                CROSS APPLY 
                    [SunUpODStage].[LMSData].[EpicLoanEarlyPayoffReCalculation_Details] (a.DisplayNumber) as b

  fields:
  - filter: displaynumber_f
    type: string
    suggestions: [000000000-00]
    
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: fullname
    sql: ${TABLE}.fullname

  - dimension: displaynumber
    sql: ${TABLE}.displaynumber

  - dimension: paymentloanid
    type: number
    sql: ${TABLE}.paymentloanid

  - dimension_group: transactioneffectivedate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.transactioneffectivedate

  - dimension: loanpaymentsequence
    type: number
    sql: ${TABLE}.loanpaymentsequence

  - dimension: isrtnskppayment
    type: number
    sql: ${TABLE}.isrtnskppayment

  - dimension: dailyinterestrate
    type: number
    sql: ${TABLE}.dailyinterestrate

  - dimension: appliedadjcreditamount
    type: number
    sql: ${TABLE}.appliedadjcreditamount

  - dimension: totalnsflatefee
    type: number
    sql: ${TABLE}.totalnsflatefee

  - dimension: fundedamount
    type: number
    sql: ${TABLE}.fundedamount

  - dimension: scheduledpaymentamount
    type: number
    sql: ${TABLE}.scheduledpaymentamount

  - dimension: numdayssincelastpayment
    type: number
    sql: ${TABLE}.numdayssincelastpayment

  - dimension: appliedpayment
    type: number
    sql: ${TABLE}.appliedpayment

  - dimension: beginningprincipal
    type: number
    sql: ${TABLE}.beginningprincipal

  - dimension: accruedinterest
    type: number
    sql: ${TABLE}.accruedinterest

  - dimension: beginningbalance
    type: number
    sql: ${TABLE}.beginningbalance

  - dimension: endingbalance
    type: number
    sql: ${TABLE}.endingbalance

  - dimension: appliedtoprincipal
    type: number
    sql: ${TABLE}.appliedtoprincipal

  - dimension: numdayscarryover
    type: number
    sql: ${TABLE}.numdayscarryover

  sets:
    detail:
      - fullname
      - displaynumber
      - paymentloanid
      - transactioneffectivedate
      - loanpaymentsequence
      - isrtnskppayment
      - dailyinterestrate
      - appliedadjcreditamount
      - totalnsflatefee
      - fundedamount
      - scheduledpaymentamount
      - numdayssincelastpayment
      - appliedpayment
      - beginningprincipal
      - accruedinterest
      - beginningbalance
      - endingbalance
      - appliedtoprincipal
      - numdayscarryover

