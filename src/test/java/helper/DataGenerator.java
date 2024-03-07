package helper;
import com.github.javafaker.Faker;

public class DataGenerator {
	
	public static String getRandomEmail() {
		Faker faker = new Faker();
		String email = faker.name().firstName().toLowerCase() + faker.random().nextInt(1, 10) + "@test.com";
		return email;
				
	}
	public static String getRandomUsername() {
		Faker faker = new Faker();
		String username = faker.name().username();
		return username;
				
	}

}
