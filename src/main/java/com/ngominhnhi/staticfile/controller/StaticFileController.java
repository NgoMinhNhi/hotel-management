package com.ngominhnhi.staticfile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.ngominhnhi.staticfile.entities.Room;
import com.ngominhnhi.staticfile.service.RoomService;

@Controller
public class StaticFileController {
	@Autowired
	private RoomService roomService;
	@RequestMapping(value= {"/","/login"})
	public String getLogin() {
		return "login";
	}
	@RequestMapping(value= {"/bookingroom"})
	public String loginUser(Model model) {
		model.addAttribute("listRoom", roomService.findAll());
		return "bookingroom";
	}
	@RequestMapping("/a04")
	public String accessToAvailableRoom() {
		return "availableroom";
	}
	@RequestMapping("/room/{name}/reservation")
	public String reservation(@PathVariable String name, Model model) {
		Room room = roomService.findByName(name);
		model.addAttribute("room", room);
		return "reservation";
	}
	@RequestMapping("/room/{name}/change-room-information")
	public String changeRoomInformation(@PathVariable String name, Model model) {
		Room room = roomService.findByName(name);
		model.addAttribute("room", room);
		return "change-room-information";
	}
	@RequestMapping("/add-single-room")
	public String addSingleRoom(Model model) {
		model.addAttribute("room", new Room());
		model.addAttribute("standard", "single");
		return "add-room";
	}
	@RequestMapping("/add-douple-room")
	public String addDoupleRoom(Model model) {
		model.addAttribute("room", new Room());
		model.addAttribute("standard", "douple");
		return "add-room";
	}
	@RequestMapping(value= {"/saveRoom"})
	public String saveRoom(@ModelAttribute("Room") Room room,Model model) {
		Room room1 = roomService.findByName(room.getName());
		if(room1 != null) {
			return "redirect:/bookingroom";
		}
		roomService.save(room);
		model.addAttribute("listRoom", roomService.findAll());
		return "redirect:/bookingroom";
	}

	@RequestMapping("/room/{name}")
	public String displayRoom(@PathVariable String name, Model model) {
		Room room = roomService.findByName(name);
		model.addAttribute("room", room);
		if(room.getStatus().equals("available")) {
			return "availableroom";
		} else if(room.getStatus().equals("booked")) {
			return "booked-room";
		} else {
			return "maintenance-room";
		}
		
	}
}
