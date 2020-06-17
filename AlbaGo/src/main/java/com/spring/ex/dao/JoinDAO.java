package com.spring.ex.dao;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;

public interface JoinDAO {
	int insertEnterprise(Enterprise enterprise);
	int insertIndividual(Individual individual);
}
