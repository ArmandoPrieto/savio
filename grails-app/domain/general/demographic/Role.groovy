package general.demographic

class Role extends Party{

	//TODO:set up sprig security wit this capabilities or roles

	
	static hasMany = [capabilities: Capability]
    static constraints = {
    }
}
