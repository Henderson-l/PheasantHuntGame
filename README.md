# BrickBreakerGame
Ap Comp Sci final project
# We made the game Brick Breaker and the purpose is to entertain the user

One Paragraph of project description goes here

### Difficulties or opportunities we encountered along the way.

The toughest part for us was after we had constructed the bricks we were trying to figure out how to making the ball bounce off of the brick and make the brick disappear.

### Most interesting piece of your code and explanation for what it does.

```Java
for(int i = 0; i<myBricks.size(); i++){
      println(count+=1);
    if(xBall<=myBricks.get(i).getBrickX()+wi && xBall>myBricks.get(i).getBrickX() && yBall<myBricks.get(i).getBrickY()+ hi && yBall>=(myBricks.get(i).getBrickY())){
    
      myBricks.remove(i);
      dY = dY * -1;
    }
  }
  
}
```
This is the code that makes the ball bounce off of the bricks. We have a for loop that goes through the array list of bricks and then an if statement that checks if the x position of the ball and the y position of the ball hit the length of the brick or the height of the brick. If that does happen, dY, which is our y rate at which the ball is moving, flips so the ball bounces off and comes back down.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Lucas Henderson and Jackson Jedlicka** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
