package com.example.list2;



import java.net.URI;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;

public class SearchResults extends Activity {
	private ListView lv;
	MyAdapter adapter;
	 ArrayList<String> College_name = new ArrayList<String>();
     ArrayList<String> College_street = new ArrayList<String>();
     ArrayList<String> College_city = new ArrayList<String>();
     ArrayList<String> No_of_likes = new ArrayList<String>();
     ArrayList<String> Inst_logo = new ArrayList<String>();
     ArrayList<String> Institute_id = new ArrayList<String>();
     ArrayList<String> Category = new ArrayList<String>();
     ArrayList<String> State = new ArrayList<String>();
      String name = "", category = "", location = "";
     int cat_pos = 0, loc_pos = 0;
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Remove title bar
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);

        //Remove notification bar
       // this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
      setContentView(R.layout.main);
        
        ImageButton b = (ImageButton) findViewById(R.id.imageButton1);
        
        name = getIntent().getExtras().getString("search");
        
        category = getIntent().getExtras().getString("category");
        location = getIntent().getExtras().getString("location");
        cat_pos = getIntent().getExtras().getInt("cat_pos");
        loc_pos = getIntent().getExtras().getInt("loc_pos");
       EditText et = (EditText)findViewById(R.id.editText1);
        et.setText(name.replaceAll("%20", " "));
        Spinner cat = (Spinner)findViewById(R.id.spinner1);
        cat.setSelection(cat_pos);
        Spinner loc = (Spinner)findViewById(R.id.spinner2);
       loc.setSelection(loc_pos);
        MyTask m = new MyTask();
  	   m.execute();
  	 final EditText et1 = (EditText)findViewById(R.id.editText1);
		final Spinner cat1 = (Spinner)findViewById(R.id.spinner1);
		final Spinner loc1 = (Spinner)findViewById(R.id.spinner2);
  	 b.setOnClickListener(new ImageButton.OnClickListener(){

			@Override
			public void onClick(View arg0) {
				

				name = et1.getText().toString();
				name = name.replaceAll(" ", "%20");
				category = cat1.getSelectedItem().toString();
				location = loc1.getSelectedItem().toString();
				adapter.clearAdapter();
				MyTask m = new MyTask();
			  	   m.execute();
			  	 
				
			}
	  		   
	  	   });
  	   
        
	}
    
	
	// Async Task
	public class MyTask extends AsyncTask<String,Void,Void>
    {
	
	       
		RestServiceUrl s = new RestServiceUrl();
		@Override
		protected Void doInBackground(String... params) {
			StringBuilder sb;
			try
            {
				if(category.equals("No category selected"))
				{
					// Category not there
					if(location.equals("No location selected"))
							// Category and location not there (Only name)
							sb=new StringBuilder(s.url+"search_name/"+name);
					else
						// Only name and loc
						sb=new StringBuilder(s.url+"search_name_loc/"+name+","+location);
				}
				else
				{
					//Category there
					if(location.equals("No location selected"))
						// Cwtgory there but no location
					sb=new StringBuilder(s.url+"search_name_cat/"+name+","+category);
					else
						// All three present
						sb=new StringBuilder(s.url+"search_name_cat_loc/"+name+","+category+","+location);
				}
				
				
	    	    String findlink=sb.toString();
	    	    HttpClient client=new DefaultHttpClient();
	    	   	    HttpGet request=new HttpGet();
	    	   		request.setURI(new URI(findlink)) ;
	    	   		HttpResponse response=client.execute(request);
	    	   	
	    	    	DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();	
	    	   	   DocumentBuilder Builder=factory.newDocumentBuilder();
	    	   	 Document  dom=Builder.parse(response.getEntity().getContent());
	    	   	  Node node=  dom.getDocumentElement();
	    	   	  if(node.hasChildNodes())
	    	   	  {
	    	   	NodeList   nList5=dom.getElementsByTagName("Institutions_search_name");
	    	   	for(int temp=0;temp<nList5.getLength();temp++)
			  	{
			  		 Node nNode=nList5.item(temp);
			  		 if(nNode.getNodeType()==Node.ELEMENT_NODE)
			  		 {
			  			 		Element eElement=(Element)nNode;
			  			 	   College_name.add(getTagValue("Inst_name", eElement));
			  			 	   College_street.add(getTagValue("Street",eElement));
			  			 	College_city.add(getTagValue("City",eElement));
			  			 	No_of_likes.add(getTagValue("no_of_likes",eElement));
			  			 	Inst_logo.add(getTagValue("Inst_logo", eElement));
			  			 	Institute_id.add(getTagValue("Institute_id",eElement));
			  			 	Category.add(getTagValue("Category", eElement));
			  			 	State.add(getTagValue("State",eElement));
			  	      }
			  	}
	    	   	  }
	    	   	  else
	    	   	  {
	    	   		  TextView t= (TextView)findViewById(R.id.textView2);
	    	   		  
	    	   		  t.setText("No search found");
	    	   		t.setVisibility(0);
	    	   	  }
	    	   	 
            }
			catch(Exception e)
			{
				
			} 
			 
			return null;
		}
		private String getTagValue(String sTag,Element eElement)
		{
	    	NodeList nlList = eElement.getElementsByTagName(sTag).item(0).getChildNodes();
			
			if(nlList.getLength()>0)
			{
		    Node nValue = (Node) nlList.item(0);
	        return nValue.getNodeValue();
			}
			else
				return "";
		
		}

		@Override
		protected void onPostExecute(Void result) {
		
	
			 lv = (ListView) findViewById(R.id.listview);
			 	
		        adapter = new MyAdapter(SearchResults.this,College_name,College_street,College_city,No_of_likes,Inst_logo,Institute_id,Category,State);
		      //  adapter.notifyDataSetChanged();
		        lv.setAdapter(adapter);
		        
				
		        lv.setOnItemClickListener(new OnItemClickListener() {
		            public void onItemClick(AdapterView<?> parent, View view,
		                int position, long id) {
		            	EditText e = (EditText) view.findViewById(R.id.editText1);
		            	 String institute_id = e.getText().toString();
		            	 Intent i = new Intent(getApplicationContext(), InstituteHome.class);
		                 // sending data to new activity
		                 i.putExtra("ins_id",institute_id);
		                 startActivity(i);
		            }
		        }); 
		}
    
    
    }
}
