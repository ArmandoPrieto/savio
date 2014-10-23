package general.demographic

class Person extends Actor{
	
	String firstName
	String lastName
	
	public String toString(){
		
		return firstName + " " + lastName
	}

    static constraints = {
    }
}
