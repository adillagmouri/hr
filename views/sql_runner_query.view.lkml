view: sql_runner_query {
  derived_table: {
    sql: SELECT functional_competency_score, years_of_experience FROM `versatile-gist-386407.hr.hr` LIMIT 1000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: functional_competency_score {
    type: number
    sql: ${TABLE}.functional_competency_score ;;
  }

  dimension: years_of_experience {
    type: number
    sql: ${TABLE}.years_of_experience ;;
  }

  set: detail {
    fields: [functional_competency_score, years_of_experience]
  }
}
