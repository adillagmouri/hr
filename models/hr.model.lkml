connection: "hr"

# include all the views
include: "/views/**/*.view"

datagroup: hr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hours"
}

persist_with: hr_default_datagroup

explore: hr {}

explore: sql_runner_query {
  join: hr{
    type: left_outer
    sql_on: ${hr.years_of_experience}= ${sql_runner_query.years_of_experience} ;;
    relationship: many_to_one
  }
}
