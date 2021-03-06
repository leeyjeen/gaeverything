package com.bitschool.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import com.bitschool.dto.BlogDTO;
import com.bitschool.service.DataService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

public class GetBlogImage {
	@Inject
	private DataService service;
	
    public static void main(String[] args) {
        String clientId = "LEq7OLCKz1iWikgbm3jr";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "pNcj27Jve1";//애플리케이션 클라이언트 시크릿값";
        List<BlogDTO> list = null;
        try {
            String text = URLEncoder.encode("동물병원", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/image?query=\""+ text + "\""; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream(),"UTF-8"));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            ObjectMapper mapper = new ObjectMapper();
            HashMap<String,Object> map = null;
            map = mapper.readValue(response.toString(),new TypeReference<HashMap<String,Object>>(){});
            String itemdata = (String) mapper.writeValueAsString(map.get("items"));
            System.out.println(itemdata);
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}


