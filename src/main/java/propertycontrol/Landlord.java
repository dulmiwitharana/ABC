package propertycontrol;
/*
 *  Represents a landlord with their associated details.
 */

public class Landlord {
	
	private int id;
	private String name;
	private String phone;
	private String email;
	private String userName;
	private String password;
	private String photo;
	
	//Constructor to initialize all fields of the landlord
	public Landlord(int id, String name, String phone, String email, String userName, String password, String photo) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.photo = photo;
	}
	

	public Landlord(String name, String phone, String email, String userName, String password, String photo) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.photo = photo;
	}

	// Getter methods to access the properties of the landlord

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}


	public String getPhoto() {
		return photo;
	}

	

	
	
	
	
	
}
