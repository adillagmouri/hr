view: hr {
  sql_table_name: hr
    ;;

  dimension: behavior_competency_score {
    type: number
    sql: ${TABLE}.behavior_competency_score ;;
  }

  dimension: call_for_interview {
    type: number
    sql: ${TABLE}.call_for_interview ;;
  }

  dimension: functional_competency_score {
    type: number
    sql: ${TABLE}.functional_competency_score ;;
  }

  dimension: top1_behavior_skill_score {
    type: number
    sql: ${TABLE}.top1_behavior_skill_score ;;
  }

  dimension: top1_skills_score {
    type: number
    sql: ${TABLE}.top1_skills_score ;;
  }

  dimension: top2_behavior_skill_score {
    type: number
    sql: ${TABLE}.top2_behavior_skill_score ;;
  }

  dimension: top2_skills_score {
    type: number
    sql: ${TABLE}.top2_skills_score ;;
  }

  dimension: top3_behavior_skill_score {
    type: number
    sql: ${TABLE}.top3_behavior_skill_score ;;
  }

  dimension: top3_skills_score {
    type: number
    sql: ${TABLE}.top3_skills_score ;;
  }

  dimension: years_of_experience {
    type: number
    sql: ${TABLE}.years_of_experience ;;
  }
  dimension: behavior {
    type: tier
    tiers: [0,0.2,0.4,0.6,0.8,1]
    style: classic
    sql: ${behavior_competency_score} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg {
    type: average
    sql:  ${behavior_competency_score} ;;
    drill_fields: []
  }
 }
