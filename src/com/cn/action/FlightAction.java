package com.cn.action;

import java.text.SimpleDateFormat;
import java.util.Map;

import com.cn.bean.Flight;
import com.cn.service.AirportService;
import com.cn.service.FlightService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class FlightAction extends ActionSupport{
	private Flight flight;
    private FlightService flightService=null;
    private AirportService airportService=null;

    public static boolean isValidDate(String str) throws java.text.ParseException {
        boolean convertSuccess=true;// ָ�����ڸ�ʽΪ��λ��/��λ�·�/��λ���ڣ�ע��yyyy/MM/dd���ִ�Сд��
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
         try { // ����lenientΪfalse. ����SimpleDateFormat��ȽϿ��ɵ���֤���ڣ�����2007/02/29�ᱻ���ܣ���ת����2007/03/01
            format.setLenient(false);
            format.parse(str);
         } catch (ParseException e) {
        	 // e.printStackTrace(); 
        	 // ���throw java.text.ParseException����NullPointerException����˵����ʽ����
             convertSuccess=false;
         } 
         return convertSuccess;
  }
    
	public void setFlight(Flight flight)
    {
    	this.flight=flight;
    }
    public Flight getFlight()
    {
    	return flight;
    }
    
    public void setFlightService(FlightService flightService)
    {
    	this.flightService=flightService;
    }
    public FlightService getFlightService()
    {
    	return flightService;
    }
    public AirportService getAirportService() {
		return airportService;
	}
	public void setAirportService(AirportService airportService) {
		this.airportService = airportService;
	}
	
	public String add(){
		if(flight.getPrice()<=0)
		{
			this.addActionError("Ʊ�۱������0��");
			return "fail";
		}
		if(flight.getTicketsum()<=0)
		{
			this.addActionError("��Ʊ���������0��");
			return "fail";
		}
		if(flight.getPrice()<=0)
		{
			this.addActionError("��Ʊ���������0��");
			return "fail";
		}
		
			if(flight.getTicketleft()>flight.getTicketsum())
			{
				this.addActionError("��Ʊ�����ܴ�����Ʊ����");
				return "fail";
			}
			if(!airportService.check(flight.getOriginstation()) || !airportService.check(flight.getTerminalstation()))
			{
				this.addActionError("���վ���յ�վ���ڻ�����Χ�ڣ�");
				return "fail";
			}
			try {
				isValidDate(flight.getOrigintime());
				isValidDate(flight.getTerminaltime());
			} catch (java.text.ParseException e) {
				e.printStackTrace();
				this.addActionError("���ʱ��򵽴�ʱ�䲻���ϸ�ʽ��");
				return "fail";
			}
			if(flightService.add(flight))	
			{

				return "success";
			}
			else
				return "fail";
	}
	public String find()
	{
		Map request = (Map) ActionContext.getContext().get("request");
		
		if(flightService.find(flight)!=null)
		{
			request.put("list", flightService.find(flight)); 
			return "success";
		}
		return "fail";
	}
	public String delete(){
		if(flightService.delete(flight))	
		return "success";
		else
		return "fail";
}
	public String update(){
		if(flight.getPrice()<=0)
		{
			this.addActionError("Ʊ�۱������0��");
			return "fail";
		}
		if(flight.getTicketsum()<=0)
		{
			this.addActionError("��Ʊ���������0��");
			return "fail";
		}
		if(flight.getPrice()<=0)
		{
			this.addActionError("��Ʊ���������0��");
			return "fail";
		}
		
			if(flight.getTicketleft()>flight.getTicketsum())
			{
				this.addActionError("��Ʊ�����ܴ�����Ʊ����");
				return "fail";
			}
			if(!airportService.check(flight.getOriginstation()) || !airportService.check(flight.getTerminalstation()))
			{
				this.addActionError("���վ���յ�վ���ڻ�����Χ�ڣ�");
				return "fail";
			}
			try {
				isValidDate(flight.getOrigintime());
				isValidDate(flight.getTerminaltime());
			} catch (java.text.ParseException e) {
				e.printStackTrace();
				this.addActionError("���ʱ��򵽴�ʱ�䲻���ϸ�ʽ��");
				return "fail";
			}
		if(flightService.update(flight))	
		return "success";
		else
		return "fail";
	}
		public String listAllFlights()
		{
			Map request = (Map) ActionContext.getContext().get("request");
			 request.put("list", flightService.list());  
				return "success";
		}
		public String updateFlightByManager(){
			if(flightService.updateFlightByManager(flight))	
			return "success";
			else
			return "fail";
		}
		
		public String listAllFlightsByUser()
		{
			Map request = (Map) ActionContext.getContext().get("request");
			 request.put("list", flightService.list());  
				return "success";
		}
}
