package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface MainDAO {
	ArrayList<HashMap<String, Object>> selectAdvertising();
	ArrayList<HashMap<String, Object>> selectProduct();
	ArrayList<HashMap<String, Object>> selectCommunity();
}
