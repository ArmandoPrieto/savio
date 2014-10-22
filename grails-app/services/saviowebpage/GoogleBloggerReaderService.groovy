package saviowebpage

import grails.converters.JSON
import grails.plugins.rest.client.RestBuilder
import grails.transaction.Transactional
import org.jsoup.nodes.Document
import savioWebPage.Post

import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.jsoup.safety.Whitelist


@Transactional
class GoogleBloggerReaderService {

    def serviceMethod() {

    }
	
	def getPosts(){
		
		
		RestBuilder rest = new RestBuilder()
		String service = "https://www.googleapis.com/blogger/v3/blogs/7012492291395427842/posts?key={key}&fetchImages={fetchImages}"
		def urlVariables = [key:"AIzaSyDeoXli9PdQv2sOFjfAPbhKeMmKf9CG3wA",fetchImages:'true']
		def resp = rest.get(service,urlVariables)
		
		def postList = [];
		Post post = null
		resp.json.items.each{
			post = new Post();
			post.setTitle(it.title.toString())
			
			
			String html = it.content.toString();
			Document doc = Jsoup.parse(html);
			doc.select("img").remove();
			// if not removed, the cleaner will drop the <div> but leave the inner text
			String clean = Jsoup.clean(doc.body().html(), Whitelist.basic());
			
			
			post.setContent(clean)
			
			it.images.each{ a ->
				a.url
				post.setImage(a.url)
			}
			postList.add(post)
		}
		
		def json = resp.json as JSON
		json.prettyPrint = true
		
		println(json)
		return postList
		
		
		
	}
	
	public String takeOutImage(String imageUrl){
		
		
		
	}
}
