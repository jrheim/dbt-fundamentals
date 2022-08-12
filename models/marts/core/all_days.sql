{{ dbt_utils.date_spine(
    datepart="day",
    start_date="DATE(2022,8,12)",
    end_date="date_add(DATE(2022,8,12), INTERVAL 1 WEEK)"
    )
}}