package general.demographic

class Contact {
	String purpose
	
	
	static belongsTo = [party: Party]
	static hasMany = [addresses: Address]
    static constraints = {
    }
}
