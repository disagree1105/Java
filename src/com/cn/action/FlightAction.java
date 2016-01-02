package com.cn.action;

import java.util.Map;

import com.cn.bean.Flight;
import com.cn.service.AirportService;
import com.cn.service.FlightService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FlightAction extends ActionSupport{
	private Flight flight;
    private FlightService flightService=null;
    private AirportService airportService=null;

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
