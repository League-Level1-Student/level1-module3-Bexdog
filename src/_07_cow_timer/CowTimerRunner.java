package _07_cow_timer;

import javax.swing.JOptionPane;

public class CowTimerRunner {
	public static void main(String[] args) throws InterruptedException {
		/* Make a CowTimer, set its time and start it.
		 * Use a short delay (seconds) when testing, then try with longer delays */
	String A =	JOptionPane.showInputDialog("Give me a positive integer");
	int a = Integer.parseInt(A);
		CowTimer timer = new CowTimer(a);
		timer.start();
		
		
	}
}
