package com.cn.action;

import java.util.List;
import java.util.Map;

import com.cn.bean.Airport;
import com.cn.bean.Flight;
import com.cn.service.AirportService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AirportAction extends ActionSupport{
	  	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
		public String listAllAirports(){
			Map request = (Map) ActionContext.getContext().get("request");
			 request.put("list", airportService.list());  
				return "success";
	}
		public String updateAirportByManager(){
			if(airportService.updateAirportByManager(airport))	
				return "success";
				else
				return "fail";
		
		}
}
