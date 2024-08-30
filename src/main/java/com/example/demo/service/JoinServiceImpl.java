package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.JoinMapper;

@Service
@Qualifier("js")
public class JoinServiceImpl implements JoinService {
	
		@Autowired
		private JoinMapper mapper;
		
		@Override
		public String join() 
		{		 
			return "/join/join";
		}

	}	

