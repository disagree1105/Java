package com.cn.action;

import java.util.Map;

import com.cn.bean.Flight;
import com.cn.service.FlightService;
import com.opensymphony.xwork2.ActionContext;

public class FlightAction {
	private Flight flight;
    private FlightService flightService=null;
    
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
	public String add(){
			if(flightService.add(flight))	
			return "success";
			else
			return "fail";
	}
	public String find()
	{
		if(flightService.find(flight))
		{
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
}
