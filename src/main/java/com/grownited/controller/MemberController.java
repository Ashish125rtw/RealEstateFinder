package com.grownited.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.MemberEntity;
import com.grownited.repository.MemberRepository;
@Controller
public class MemberController {
	@Autowired
	MemberRepository repositoryMember;
	@GetMapping("newmember")
	public String newMember() {
		return "NewMember";
	}
	@PostMapping("savemember")
	public String saveMember(MemberEntity entityMember) {
		repositoryMember.save(entityMember);
		return "NewMember";
	}
	@GetMapping("listmember")
	public String listMember(Model model) {
		List<MemberEntity> memberList = repositoryMember.findAll();// select * from members; //500 -> MemberEntity
		
		//how to send data from controller to jsp 
		//Model 
		model.addAttribute("memberList", memberList);
						//dataName , dataValue 
		
		return "ListMember";
	}
}
