{{
    config(
      re_data_monitored=true,
      re_data_time_filter='re_data_ts'
    )
}}

Select 
    *

from {{ ref('stg_ufo') }}