# re data with airbyte
[source](https://airbyte.com/tutorials/identify-data-quality-issues-on-data-ingestion-pipelines)

[ufo data kaggle](https://www.kaggle.com/datasets/NUFORC/ufo-sightings?resource=download)



# setup

```bash
# load seed files into the database
dbt seed
# Compute models for toy_shop project, only pending_orders_per_customer table in this case.
dbt run --select stg_ufo
```

run re data for the a time window (minics running this several times)
```bash
re_data run --start-date 2022-06-20 --end-date 2022-06-26
```


## running site

```bash
re_data overview generate
re_data overview serve
```

## send a notification TBC
```bash
re_data notify slack \                                              ✘ INT  re-data-dbt-aMOho44y
--start-date 2022-06-20 \
--end-date 2022-06-27 \
--webhook-url https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX \
--subtitle="[Optional] Daves Markdown text to be added as a subtitle in the slack message generated"
```