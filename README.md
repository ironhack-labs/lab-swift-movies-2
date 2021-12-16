
![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Movies (2)

<br>

## Introduction

Labs are mandatory and must be completed before the start of the next class. 

**Exceptionally, students will have the week-end to complete this lab**.

You may work collaboratively with your classmates, but you may not copy and paste another student's code.

## Requirements

- Fork this repository.
<!-- - Add your instructor and the class graders to your repository and ensure that your repository is private. Public repositories will receive a zero on the assignment.
  - If you are unsure who your class graders are, ask your instructor or refer to the day 1 slide deck. -->
- Upload the code for all of the following prompts to your repository.

## Submission

- Upon completion, run the following commands:

  ```shell
  git add .
  git commit -m "done"
  git push origin main
  ```

- Create a Pull Request

When you make pull request in pair-programming: `student1,student2-nameOfTheExercise` <br>
When you make pull request in individual-programming: `student-nameOfTheExercise`

<br>

## Starter code

We provided you with a starter code. Start building on top of it.

The starter code should be an iOS App Xcode project.

<br>

## Iterations

### Fixing the UI

Start by running the app on your device or on a simulator. As you can see, the UI is completely broken.
That's because the view's components have been added to the storyboard, but their layout constraints have not been setup.
The code should, however, be familiar. Yes, it's pretty much the same as what we had yesterday!

#### Iteration 1

Add constraints to your first View in the VC's subviews list. It will be our ViewController's background view and should cover the whole screen (hint: mind the safe area for the top & bottom constraints)

#### Iteration 2

Add constraints to the Visual Effect View. It will appear above the previous view, and should also fill the whole screen.

#### Iteration 3

Add constraints to the label. It should appear below the top of the screen, with equal margins to the top, left and right (for example, 20?)

#### Iteration 4

Add constraints to the image view. It should be equidistant from the screen's left & right edges and the label.

#### Iteration 5

Add a constraint to the image view, making it's height proportional to it's width (hint: pick a multiplier that would make sense for a movie poster).

#### Iteration 6

In the storyboard editor, set one of the movie posters in the project's assets as the image view's image. Make sure the image correctly fits the image view without being distorted (hint: check the imageView's contentMode).

#### Iteration 7

In the storyboard editor, set the label's value to match the poster's movie's name.

You can now run you app. It's a nice start, right?

#### Iteration 8 (Bonus)

In the storyboard editor, using the image view's "User Defined Runtime Attributes", give our image view rounder corners (hint: it involves `cornerRadius` and `masksToBounds`)

---

### Fixing the Logic


#### Iteration 9

The `IBOutlets` are all present in our `MovieDetailsViewController`, but they aren't connected to the views in the storyboard editor. Connect the views to their outlets.

#### Iteration 10

The `MovieDetailsViewController`'s `setup()` method currently does nothing. Update it so that it does the following:
    - Get all them movies from the `Movies` enum as `Movie` structs (hint: `Movies` conforms to `CaseIterable`)
    - Append them to the `MovieDetailsViewController`'s `movies` array
    - Call the (as of now still empty) `update(movie: Movie)` method with the first movie

#### Iteration 11

Write the logic for the `update(movie: Movie)` method so that it
  - Stores the movie
  - Correctly updates the background view, the visual effects view, the label's text and text's color, and the image view's image.

#### Iteration 12

In the storyboard editor editor, remove the image view's image and set some default text for the label (it will be replaced at runtime)

Now, run your app.
Looks a lot nicer, right?

---

### Giving control to the user (here, you!)

Something is missing though. We have quite a few movies in our enum, but our app only shows the first one;
And as a user, we don't have any way to navigate through them. Which is why we are going to add buttons!


#### Iteration 13

In the storyboard editor, add a horizontal stack view at the bottom of the screen. Set it's constraints so it sticks to the bottom of the screen. Inside of it, add two UIButtons.

#### Iteration 14

Fix the horizontal stack view's UI (hint: play around with the stack view's distribution setting and spacing value until you find something satisfying )

#### Iteration 15

Add an `IBAction` _for each button_ in `MovieDetailsViewController`.
  - The button on the left will be used to go _back_ in our list of movies, and the button on the right will be used to go _forward_ in our list of movies. So name the `IBAction`s accordingly.
  - Also set your buttons text in the storyboard editor. Anything will be better than 'Button', but prefer text that is short and descriptive of the button's action.

#### Iteration 16

Uncomment the `indexForMovie(movie: Movie?)` method. Adapt it to fit the name you chose for your retrieved movies array property.
- Iteration 16: Using the `indexForMovie(movie: Movie?)` method and the `update(movie: Movie)` method, implement the necessary logic for your `IBAction`s. Remember:
  - A tap on the left button should allow a user to go _back_ in the list of movies.
  - A tap on the right button should allow a user to go _forward_ in the list of movies.
  - Be careful not to use out of bounds indexes

Now, run your app again. Use your buttons. And here it is. Your first interactive app, on your first week! Congrats!

#### Iteration 17 (Bonus)

Style your two UIButtons by changing their text colors and background colors. Pick anything you like! If you know how to, you can also give them rounded corners! It's your app, after all!

#### Iteration 18 (Bonus)

- When at the beginning of the list of movies, disable the left button. Similarly, when at the end of the list of movies, disable the right button.
- In the storyboard editor, give your buttons a different style when they are disabled, to make it clear that won't react to the user's touch (for example, make the text dimmer, by giving it a color closer to the button's background color).
- Hint: you might need to set `IBOutlet`s referencing your buttons in `MovieDetailsViewController`.

Run your app.
So, how is it, making your first app?


#### Iteration 19 (Bonus)

Add your own favorite movies to the `Movies` enum! Remember to add their posters in the project's  `Assets`' `MoviePosters` folder.

#### Iteration 20 (Bonus)

Using a label and the ⭐️ emoji, display the current movie's rating on a 0 to 5 scale (hint: use divisions and rounding to map your movies' 0 to 10 ratings to a 0 to 5 scale)

<br>

Happy coding! :heart:
