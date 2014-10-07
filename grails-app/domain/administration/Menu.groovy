package administration

class Menu {

	String title
	String url
	boolean active
	
	
	static hasMany = [subMenu: Menu]
    static constraints = {
		url blank: true, nullable: true
    }
}
