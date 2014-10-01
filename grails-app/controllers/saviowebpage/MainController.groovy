package saviowebpage
import administration.Menu

class MainController {

    def main_page() {
		
		render(view: "index", model:[menus: Menu.list()])
		
		
	}
}
