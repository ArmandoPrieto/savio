package general.demographic

class Party {
	
	static hasMany = [identities: PartyIdentity, contacts: Contact]

    static constraints = {
    }
}
