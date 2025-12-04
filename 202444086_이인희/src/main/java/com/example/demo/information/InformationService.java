package com.example.demo.information;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class InformationService {
	private final InformationRepository iRepository;
	
	public Information select(int id) {
		Optional<Information> info = iRepository.findById(id);
		
		if (info.isPresent()) {
			return info.get();
		}
		else {
			return null;
		}
	}
	
	public List<Information> selectAll() {
		return iRepository.findAll();
	}
	
	public void insert(Information info) {
		iRepository.save(info);
	}
}
