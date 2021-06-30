# project-euler-haskell

Solutions to Project Euler problems in Haskell. To those good at Haskell and/or math: I am neither. This repo may be an affront to your sensibilities. It serves only as an outlet for me to write more Haskell 😄

## Running the project

I had to add a modified stackage snapshot part of a collection of workarounds to get Stack and GHC running on Apple Silicon... you can probably use one of the lts resolvers instead.

`stack run`: prompts for the exercise number and then outputs the solution if I've completed it
`stack run [EXERCISE_NUMBER]`: outputs the solution for EXERCISE_NUMBER if I've completed it