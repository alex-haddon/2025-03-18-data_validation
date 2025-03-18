library(pointblank)

agent <- small_table |>
  create_agent() |>
  col_vals_lt(a, value = 10) |>
  col_vals_between(d, left = 0, right = 5000) |>
  col_vals_in_set(f, set = c("low", "mid", "high")) |>
  col_vals_regex(b, regex = "^[0-9]-[a-z]{3}-[0-9]{3}$")

# print(agent)

# print(interrogate(agent))

agent <- interrogate(agent)

print(get_sundered_data(agent, type = "pass"))

print(get_sundered_data(agent, type = "fail"))

print(get_sundered_data(agent, type = "combined"))

get_data_extracts(agent)
