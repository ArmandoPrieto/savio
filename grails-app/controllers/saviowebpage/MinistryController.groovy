package saviowebpage

import grails.converters.*
import grails.plugins.rest.client.RestBuilder
import org.springframework.util.LinkedMultiValueMap
import org.springframework.util.MultiValueMap
import org.joda.time.DateTime
import org.joda.time.DateTimeZone
import org.joda.time.LocalDateTime
import groovy.json.*


class MinistryController {

    def index() { 
		
		String key = 'AIzaSyDeoXli9PdQv2sOFjfAPbhKeMmKf9CG3wA'
		RestBuilder rest = new RestBuilder() 
		
		String service = "https://www.googleapis.com/calendar/v3/calendars/prieto.arm@gmail.com/events?key={key}"
		
		def urlVariables = [key:"AIzaSyDeoXli9PdQv2sOFjfAPbhKeMmKf9CG3wA"]
		
		def resp = rest.get(service,urlVariables)
		
		DateTimeZone startTimeZone = null
		DateTime startDateTime = null
		
		DateTimeZone endTimeZone = null
		DateTime endDateTime  = null
		
		resp.json.items.each{
			
			
			
			println(it.summary)
			
			if(allDayEvent(it)){
			
				println(it.start.date)
				//it.end.date
			}else{
			
			startTimeZone = DateTimeZone.forID( it.start.timeZone);
			startDateTime = new DateTime( it.start.dateTime, startTimeZone );
			
			println(startDateTime.getDayOfMonth()+' '+startDateTime.monthOfYear().getAsShortText())
			/*
			endTimeZone = DateTimeZone.forID( it.end.timeZone);
			endDateTime = new DateTime( it.end.dateTime, endTimeZone );
			*/
			
			}
			
		}
		
		
		def json = resp.json as JSON
		json.prettyPrint = true
			
		
		render(json)
		//render(view: "ministry")
		
	}
	
	public boolean allDayEvent(def item){
		
		if(item.start.date && item.end.date){
		
			return true	
		}else if(item.start.dateTime && item.end.dateTime){
			return false
		}
		
		
	}
}
