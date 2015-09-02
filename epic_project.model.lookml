- connection: epic_data

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: 3_rd_party_collections

- explore: client_reporting_history

- explore: rec_job_date

- explore: reporting_cso_150218
  joins:
    - join: vw_payments
      foreign_key: vw_payments_id


- explore: tbl_dm_matches

- explore: tbl_rpt_ach_reconciliation

- explore: tbl_rpt_cutoff

- explore: tbl_rpt_loans_150302

- explore: tbl_rpt_payments_150302

- explore: tbl_spv1_loans

- explore: tbl_time_tracker

- explore: vw_client

- explore: vw_client_flags

- explore: vw_current_reporting_business_dates

- explore: vw_loan_history

- explore: vw_loans
      
- explore: vw_off_curve_comparison

- explore: vw_payments
  joins:
    - join: vw_loans
      relationship: many_to_one
      sql_on: ${vw_loans.id} = ${vw_payments.loan_id} 

- explore: vw_payments_matched

- explore: vw_payroll

- explore: vw_references

- explore: vw_returns_cctest

- explore: vw_rpt_loans_today

- explore: vw_rpt_payments_spv1

- explore: vw_rpt_payments_today

- explore: vw_underwriting

- explore: vw_weekly_fpd

- explore: loan_new_payoff
  always_filter:
    displaynumber: '000000000-00'
