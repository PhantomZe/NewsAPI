package com.News.NewsAPI;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import news;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import com.google.gson.Gson;

@Path("newsresource")
public class newsResource {
	String APIkey = "6a79b25ec6744d79ab9868a8b57c3f0b";
	
	//Get News Without Category
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getTopNews() {

    	String url = "http://newsapi.org/v2/top-headlines?country=id&apiKey="+APIkey;

        List<news> data = getListNewsArticles(url);
        return new Gson().toJson(data);
    }

	//Get News With Category
    @GET
    @Path("{Category}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getNewsByCategory(@PathParam("Category") String Category) {

    	String url = "http://newsapi.org/v2/top-headlines?country=id&category="+Category+"&apiKey="+APIkey;
		List<news> data = getListNewsArticles(url);
        return new Gson().toJson(data);
    }

	//Get News With Search
    @GET
    @Path("/Search/{Search}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getNewsBySearch(@PathParam("Search") String Search) {

    	String url = "http://newsapi.org/v2/top-headlines?country=id&q="+Search+"&apiKey="+APIkey;
		List<news> data = getListNewsArticles(url);
        return new Gson().toJson(data);
    }
    
    public List<news> getListNewsArticles(String url) {

		List<news> listArticlesNews = new ArrayList<news>();
		
		try {
			//URL Connection
			URL urlObj = new URL(url);
			HttpURLConnection  con = (HttpURLConnection) urlObj.openConnection();
			
			//Response code
			int ResponseCode =	con.getResponseCode();
			
			// Check ResponseCode is Correct Or not
			BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));	
			String inputString;
			StringBuffer response = new StringBuffer();
			
			while ((inputString = in.readLine()) != null) {
				response.append(inputString);			
			}
			
			in.close();
			
			JSONObject jsonObject = new JSONObject(response.toString());

			//Get Article Data if Success
			if (ResponseCode == 200) {
			JSONArray jsonArray = jsonObject.getJSONArray("articles");
			
				for (int i = 0; i < jsonArray.length(); i++) {
				    news articleNews = new news();
					
					articleNews.setTitle(jsonObject.getJSONArray("articles").getJSONObject(i).get("title").toString());
					articleNews.setAuthor(jsonObject.getJSONArray("articles").getJSONObject(i).get("author").toString());
					articleNews.setContent(jsonObject.getJSONArray("articles").getJSONObject(i).get("content").toString());
					articleNews.setName(jsonObject.getJSONArray("articles").getJSONObject(i).getJSONObject("source").get("name").toString());
					articleNews.setId(jsonObject.getJSONArray("articles").getJSONObject(i).getJSONObject("source").get("id").toString());
					articleNews.setDescription(jsonObject.getJSONArray("articles").getJSONObject(i).get("description").toString());
					articleNews.setUrl(jsonObject.getJSONArray("articles").getJSONObject(i).get("url").toString());
					articleNews.setUrlToImage(jsonObject.getJSONArray("articles").getJSONObject(i).get("urlToImage").toString());

					listArticlesNews.add(articleNews);
				}		
			}
			} catch (Exception e) {
				System.out.println(e);
				e.getStackTrace();
			}
		
		return listArticlesNews;
	}
}
