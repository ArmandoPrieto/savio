package administration

class Menu {

	String title
	String url
	boolean active
	
	
    static constraints = {
		url blank: true, nullable: true
    }
}
