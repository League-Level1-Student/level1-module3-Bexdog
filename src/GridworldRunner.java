import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridworldRunner {
public static void main(String[] args) {
	World world = new World();
	world.show();
	Flower flower = new Flower();
	for(int i = 0; i<10;i++) {
		for(int j = 0; j<10;j++) {
			Location location = new Location(i,j);
			world.add(location, flower);
		}
	}
	Bug bug0 = new Bug();
	Location location0 = new Location(5,5);
	world.add(location0, bug0);
	Bug bug1 = new Bug();
	Random Ran = new Random();
	int ran = Ran.nextInt(11);
	Location location1 = new Location(ran,ran);
	world.add(location1, bug1);
	bug1.setColor(Color.BLUE);
	bug1.setDirection(90);
}
}
