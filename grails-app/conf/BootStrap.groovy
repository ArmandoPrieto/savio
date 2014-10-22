import administration.Menu

class BootStrap {

    def init = { servletContext ->
    
		environments {
				development{
				def a = new Menu(title:"Home", url:"",  active:true, subMenu: null).save(flush: true)
				def b = new Menu(title:"About", url:"",  active:false, subMenu: null).save(flush: true)
				//def c = new Menu(title:"Home1", url:"",  active:false, subMenu: null).save(flush: true)
				def d = new Menu(title:"Home2", url:"",  active:false, subMenu: [a,b]).save(flush: true)
				
				//Locale language
				Locale.setDefault(Locale.ENGLISH);
				println("Starting")
			}
		}
		
		
		}
    def destroy = {
    }
}
