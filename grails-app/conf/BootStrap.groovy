import administration.Menu

class BootStrap {

    def init = { servletContext ->
    
		environments {
				development{
				new Menu(title:"Home", url:"",  active:true).save(flush: true)
				new Menu(title:"About", url:"",  active:false).save(flush: true)
				new Menu(title:"Home1", url:"",  active:false).save(flush: true)
				new Menu(title:"Home2", url:"",  active:false).save(flush: true)
				
				println("Starting")
			}
		}
		
		
		}
    def destroy = {
    }
}
