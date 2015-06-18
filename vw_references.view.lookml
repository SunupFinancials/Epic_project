- view: vw_references
  sql_table_name: vw_References
  fields:

  - dimension: vw_references_id
    primary_key: true
    type: int
    sql: ${TABLE}.vw_References_Id

  - dimension: client_id
    type: int
    sql: ${TABLE}.ClientId

  - dimension_group: date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateCopiedFromEpicDart

  - dimension: id
    type: int
    sql: ${TABLE}.Id

  - dimension: primary_reference
    type: int
    sql: ${TABLE}.PrimaryReference

  - dimension: reference_address
    sql: ${TABLE}.ReferenceAddress

  - dimension: reference_city
    sql: ${TABLE}.ReferenceCity

  - dimension: reference_first_name
    sql: ${TABLE}.ReferenceFirstName

  - dimension: reference_last_name
    sql: ${TABLE}.ReferenceLastName

  - dimension: reference_phone
    sql: ${TABLE}.ReferencePhone

  - dimension: reference_phone_disconnect
    sql: ${TABLE}.ReferencePhoneDisconnect

  - dimension: reference_phone_do_not_call
    sql: ${TABLE}.ReferencePhoneDoNotCall

  - dimension: reference_zip
    sql: ${TABLE}.ReferenceZip

  - dimension: relationship
    sql: ${TABLE}.Relationship

  - measure: count
    type: count
    drill_fields: [vw_references_id, reference_first_name, reference_last_name]

