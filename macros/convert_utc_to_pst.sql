{% macro convert_utc_to_pst(timestamp_column) %}

    -- Convert timestamp from UTC to PST
    SELECT
        TIMESTAMP_WITH_TIME_ZONE(
            TIMESTAMP_TRUNC({{ timestamp_column }}, 'HOUR') AT TIME ZONE 'America/Los_Angeles'
        ) AS pst_timestamp

{% endmacro %}