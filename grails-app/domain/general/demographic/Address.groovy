package general.demographic

class Address {
	String address 
	String city
	String postalCode
	String country
	
	static belongsTo = [contact: Contact]
    static constraints = {
    }
}
