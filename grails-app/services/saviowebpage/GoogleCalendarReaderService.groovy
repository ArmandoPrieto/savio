package saviowebpage


import grails.converters.*
import grails.plugins.rest.client.RestBuilder
import org.springframework.util.LinkedMultiValueMap
import org.springframework.util.MultiValueMap
import org.joda.time.DateTime
import org.joda.time.DateTimeZone
import org.joda.time.LocalDateTime
import groovy.json.*
import java.text.SimpleDateFormat
import org.springframework.context.i18n.LocaleContextHolder as LCH
import savioWebPage.Event

import grails.transaction.Transactional

@Transactional
class GoogleCalendarReaderService {

    def serviceMethod() {

    }
	
	def getEvents(){
		
		RestBuilder rest = new RestBuilder()
		String service = "https://www.googleapis.com/calendar/v3/calendars/prieto.arm@gmail.com/events?key={key}"
		def urlVariables = [key:"AIzaSyDeoXli9PdQv2sOFjfAPbhKeMmKf9CG3wA"]
		def event = [];
		try{
			def resp = rest.get(service,urlVariables)
		}catch(Exception e ){
			return event
		}
		DateTimeZone startTimeZone = null
		DateTime startDateTime = null
		
		DateTimeZone endTimeZone = null
		DateTime endDateTime  = null
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date parseDate = null
		Event evento = null
		resp.json.items.each{
			evento = new Event();
			evento.setSummary(it.summary.toString()) 
			
			if(justDateEvent(it)){
				parseDate = df.parse(it.start.date.toString());
				startDateTime = new DateTime(parseDate.getTime());
				
				parseDate = df.parse(it.end.date.toString());
				endDateTime = new DateTime(parseDate.getTime());
				evento.setStartDateTime(startDateTime)
				evento.setEndDateTime(endDateTime)
				
			}else{
			
				startTimeZone = DateTimeZone.forID( it.start.timeZone);
				startDateTime = new DateTime( it.start.dateTime, startTimeZone );
				
				endTimeZone = DateTimeZone.forID( it.end.timeZone);
				endDateTime = new DateTime( it.end.dateTime, endTimeZone );
				evento.setStartDateTime(startDateTime)
				evento.setEndDateTime(endDateTime)
				
			}
			evento.setHtmlLink(it.htmlLink)
			event.add(evento)
		}
		def json = resp.json as JSON
		json.prettyPrint = true
		
		//println(json)
		return event
		
		
		
	}
	public boolean justDateEvent(def item){
		if(item.start.date && item.end.date){
			return true
		}else if(item.start.dateTime && item.end.dateTime){
			return false
		}
		
	}
	public String printTime(DateTime startDateTime, String format, boolean justDate){
		
			return startDateTime.toString(format)
		
	}
	
		
}
