Chord Generator
===============

Chord Generator is a Command Line App used for generating random chords within a scale.

---

## A User Can:

- See a list of scales 
- Add a new scale to the program
- Generate a new chord
- See a list of generated chords
- Replace a chord with a new one from the same scale
- Delete all chords that have been created
- Delete a scale
- Update the name of a scale

## Installation

- Download or clone the repository
- Navigate to the repository using `cd`
- Type `bundle install` in the terminal
- Type `rake db:migrate` in the terminal
- Type `rake db:seed` in the terminal

## Running the Program

- To start the program, type `ruby bin/run.rb`
- Next, enter a number numbers 1-9 depeneding on which option you want to choose
- Some options will prompt you to respond. Scale names are case sensitive.
- If you exit, you must run `ruby bin/run.rb` again to start the program
- If you want to force reset the program (delete all scales and chords that have been    created), you can run `rake db:seed` again.

## Tutorial Video

(https://youtu.be/vJRbiHjPJC0)

## License

(https://www.mit.edu/~amini/LICENSE.md)

