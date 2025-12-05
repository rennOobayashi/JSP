package com.example.demo.inforDetails;

import org.springframework.stereotype.Service;

import com.example.demo.information.Information;
import com.example.demo.information.InformationRepository;
import com.example.demo.information.InformationService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class InfoDetailsService {
	private final InfoDetailsRepository dRepository;
	private final InformationRepository iRepository;
	
	public void insert(Information information, String subTitle, String content) {
		InfoDetails infoDetails = information.getDetails();
		
		if (infoDetails == null) {
			infoDetails = new InfoDetails();
			infoDetails.setInformation(information);
		}
		infoDetails.setSubTitle(subTitle);
		infoDetails.setContent(content);
		dRepository.save(infoDetails);
		
		if (information.getDetails() == null) {
			information.setDetails(infoDetails);
			iRepository.save(information);
		}
	}
}
