package saviowebpage
import administration.Menu

class MainController {

	def googleCalendarReaderService
	def GoogleBloggerReaderService
    def main_page() {
		
		def postList = googleBloggerReaderService.getPosts()
		
		
		def eventList = googleCalendarReaderService.getEvents()
		
		
		render(view: "index", model:[menus: Menu.list(), events: eventList, posts: postList])
		
		
	}
}
