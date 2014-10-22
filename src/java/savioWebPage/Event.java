package savioWebPage;

import org.joda.time.DateTime;

public class Event {
	
	String summary;
	DateTime startDateTime;
	DateTime endDateTime;
	String htmlLink;
	
	public Event(){
		
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public DateTime getStartDateTime() {
		return startDateTime;
	}
	public void setStartDateTime(DateTime startDateTime) {
		this.startDateTime = startDateTime;
	}
	public DateTime getEndDateTime() {
		return endDateTime;
	}
	public void setEndDateTime(DateTime endDateTime) {
		this.endDateTime = endDateTime;
	}
	public String getHtmlLink() {
		return htmlLink;
	}
	public void setHtmlLink(String htmlLink) {
		this.htmlLink = htmlLink;
	}

}
