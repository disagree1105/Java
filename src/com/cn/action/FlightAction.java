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
        boolean convertSuccess=true;// 指定日期格式为四位年/两位月份/两位日期，注意yyyy/MM/dd区分大小写；
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
         try { // 设置lenient为false. 否则SimpleDateFormat会比较宽松地验证日期，比如2007/02/29会被接受，并转换成2007/03/01
            format.setLenient(false);
            format.parse(str);
         } catch (ParseException e) {
        	 // e.printStackTrace(); 
        	 // 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
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
			this.addActionError("票价必须大于0！");
			return "fail";
		}
		if(flight.getTicketsum()<=0)
		{
			this.addActionError("总票数必须大于0！");
			return "fail";
		}
		if(flight.getPrice()<=0)
		{
			this.addActionError("余票数必须大于0！");
			return "fail";
		}
		
			if(flight.getTicketleft()>flight.getTicketsum())
			{
				this.addActionError("余票数不能大于总票数！");
				return "fail";
			}
			if(!airportService.check(flight.getOriginstation()) || !airportService.check(flight.getTerminalstation()))
			{
				this.addActionError("起点站或终点站不在机场范围内！");
				return "fail";
			}
			try {
				isValidDate(flight.getOrigintime());
				isValidDate(flight.getTerminaltime());
			} catch (java.text.ParseException e) {
				e.printStackTrace();
				this.addActionError("起飞时间或到达时间不符合格式！");
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
			this.addActionError("票价必须大于0！");
			return "fail";
		}
		if(flight.getTicketsum()<=0)
		{
			this.addActionError("总票数必须大于0！");
			return "fail";
		}
		if(flight.getPrice()<=0)
		{
			this.addActionError("余票数必须大于0！");
			return "fail";
		}
		
			if(flight.getTicketleft()>flight.getTicketsum())
			{
				this.addActionError("余票数不能大于总票数！");
				return "fail";
			}
			if(!airportService.check(flight.getOriginstation()) || !airportService.check(flight.getTerminalstation()))
			{
				this.addActionError("起点站或终点站不在机场范围内！");
				return "fail";
			}
			try {
				isValidDate(flight.getOrigintime());
				isValidDate(flight.getTerminaltime());
			} catch (java.text.ParseException e) {
				e.printStackTrace();
				this.addActionError("起飞时间或到达时间不符合格式！");
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
