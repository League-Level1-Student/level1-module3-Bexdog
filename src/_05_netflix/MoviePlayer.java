package _05_netflix;

public class MoviePlayer {
public static void main(String[] args) {
	Movie endgame = new Movie("EndGame", 5);
	Movie spiderman = new Movie("Spiderman", 4);
	Movie infinitywar = new Movie("Infinity War", 3);
	Movie captainmarvel = new Movie("Captain Marvel", 3);
	Movie thefirstavenger = new Movie("Captain America", 3);
	NetflixQueue movies = new NetflixQueue();
	movies.addMovie(endgame);
	movies.addMovie(spiderman);
	movies.addMovie(infinitywar);
	movies.addMovie(captainmarvel);
	movies.addMovie(thefirstavenger);
	movies.printMovies();
	
	System.out.println("The best movie is "+movies.getBestMovie());
	System.out.println("The second best movie is "+movies.getMovie(1));
}
}
