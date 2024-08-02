module OmikujiWorkflow

# Write your package code here.
OMIKUJI_LIST = String["Awesome!", "Good", "Okay", "Meh", "Bad", "Terrible!"]

"""
    get_omikuji() -> String

Return a random omikuji(draw a fortune) from `OMIKUJI_LIST`.
"""
get_omikuji() = rand(OMIKUJI_LIST)

end
