package general.demographic

class Party {
	
	String type
	
	static hasMany = [identities: PartyIdentity, contacts: Contact]

    static constraints = {
    }
}
