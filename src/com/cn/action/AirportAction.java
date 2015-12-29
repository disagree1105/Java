package com.cn.action;

import com.cn.bean.Airport;
import com.cn.service.AirportService;

public class AirportAction {
	  	private Airport airport;
	    private AirportService airportService=null;
	    
	    public void setAirport(Airport airport)
	    {
	    	this.airport=airport;
	    }
	    public Airport getAirport()
	    {
	    	return airport;
	    }
	    
	    public void setAirportService(AirportService airportService)
	    {
	    	this.airportService=airportService;
	    }
	    public AirportService getAirportService()
	    {
	    	return airportService;
	    }
		public String add(){
				if(airportService.add(airport))	
				return "success";
				else
				return "fail";
		}
		public String find()
		{
			if(airportService.find(airport))
			{
				return "success";
			}
			return "fail";
		}
		public String delete(){
			if(airportService.delete(airport))	
			return "success";
			else
			return "fail";
	}
		public String update(){
			if(airportService.update(airport))	
			return "success";
			else
			return "fail";
	}
}
