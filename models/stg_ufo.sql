{{
    config(
      materialized = 'table',
      re_data_monitored=true,
      re_data_time_filter='re_data_ts'
    )
}}

Select 
    re_data_date::timestamp as re_data_ts,
    datetime::timestamp,
    city,
    state,
    country,
    shape,
    "duration (seconds)"::int as duration_seconds,
    "duration (hours/min)" as duration_hrs_mins,
    comments,
    "date posted" as date_posted,
    latitude,
    longitude 

from {{ source('google_sheets', 'ufo') }}