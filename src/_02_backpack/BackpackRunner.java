package _02_backpack;

public class BackpackRunner {
private static Backpack backpack=new Backpack();
	public static void main(String[] args) {
		 backpack.putInBackpack(new Pencil());
		 backpack.putInBackpack(new Ruler());
		 backpack.putInBackpack(new Textbook());
		 backpack.packAndCheck();
	}
}
