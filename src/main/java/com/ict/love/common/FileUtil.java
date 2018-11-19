package com.ict.love.common;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUtil {
	
	public static final String UPLOAD_PATH = "C:\\jsp_study\\workspace\\love2\\src\\main\\webapp\\resources\\img\\upload";
	
	@SuppressWarnings("unchecked")
	public static Map<String, Object> saveFile(MultipartHttpServletRequest request){
		Map<String, Object> map = new HashMap<>();
		
		Map<String, Object> data = request.getParameterMap();
		Iterator<String> iter = data.keySet().iterator();
		
		while(iter.hasNext()) {
			String key = iter.next();
			System.out.println("iter value : " + map.get(key));
			map.put(key, data.get(key)); 
		}
		
		Map<String, MultipartFile> files = request.getFileMap();
		iter = request.getFileMap().keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			String fileName = files.get(key).getOriginalFilename();
			
			if(!fileName.equals("")) {
				String saveFileName = System.currentTimeMillis() + fileName.substring(fileName.lastIndexOf('.'));
				File uploadFile = new File(UPLOAD_PATH, saveFileName);
				
				try {
					files.get(key).transferTo(uploadFile);
				} catch (IllegalStateException | IOException e) {
					System.out.println(e.getMessage());
				}
				
				map.put(key, saveFileName);
			}
		}
		System.out.println("map : " + map);
		return map;
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T parseMap(Map<String, Object> map, Class<?> clazz) {
		T obj = null;

		try {
			obj = (T) clazz.newInstance();

			BeanUtils.populate(obj, map);
		} catch (InstantiationException | IllegalAccessException e) {
			System.out.println(e.getMessage());
		} catch (InvocationTargetException e) {
			System.out.println(e.getMessage());
		}

		return obj;
	}
	

}
