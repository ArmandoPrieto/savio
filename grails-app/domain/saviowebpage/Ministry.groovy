package saviowebpage
import general.demographic.Person
import general.demographic.Group

class Ministry extends Group{
	
	
	String name
	String description
	String shortDescription
	String imageUrl
	
	public Ministry(){
		
		this.setType("Ministry")
		this.setLeaders(null)
		this.setParticipants(null)
		this.setRoles(null)
		this.setIdentities(null)
		this.setContacts(null)
		
		
		
	}
	
	static hasMany = [leaders: Person, participants: Person]
	

    static constraints = {
		//imageUrl(url: true)
		shortDescription size: 1..200
		
    }
	static mapping = {
		description type: "text"
		//imageUrl type: "text"
		
	 }
}
