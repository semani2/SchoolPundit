package com.example.list2;

import java.net.URI;
import java.util.regex.Pattern;

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

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteConstraintException;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Patterns;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;

public class InstituteHome extends Activity{
	String id = "" ,Ins_name = "",Ins_logo= "",Desc= "",phone= "",email="",web="",street = "",city ="", state="",category = "";
	String mblNumber = "" , email1 = "";
	ImageButton b,like_but;
	String android_id = "";
	String like = "";
	Favourites f = new Favourites();
	@Override
	    public void onCreate(Bundle savedInstanceState) {
		SessionManager session = new SessionManager(getApplicationContext());
	        super.onCreate(savedInstanceState);
	        this.requestWindowFeature(Window.FEATURE_NO_TITLE);
	        this.setContentView(R.layout.ins_home);
	        //session.logoutUser();
	        
	     
	        
	        
	        b = (ImageButton)findViewById(R.id.imageButton1);	
	        like_but = (ImageButton)findViewById(R.id.imageButton2);
	        Intent i = getIntent();
	        id = i.getStringExtra("ins_id");
	        // displaying selected product name
	        f.Device_id = Secure.getString(getApplicationContext().getContentResolver(),Secure.ANDROID_ID); 
	        f.Institute_id = id;
	        TelephonyManager tm = (TelephonyManager)getSystemService(Context.TELEPHONY_SERVICE); 
	        mblNumber = tm.getLine1Number();
	        Pattern emailPattern = Patterns.EMAIL_ADDRESS; // API level 8+
	        Account[] accounts = AccountManager.get(this).getAccounts();
	        for (Account account : accounts) {
	            if (emailPattern.matcher(account.name).matches()) {
	                email1 = account.name.toString();
	                
	            }
	        }
	     
		
	    
	        MyTask m = new MyTask();
	   	   m.execute();
	    	b.setOnClickListener(new OnClickListener() {
					public void onClick(View arg0) {
						AlertDialogManager alert = new AlertDialogManager();
					try
					{
					DatabaseHandler db = new DatabaseHandler(InstituteHome.this);
					
						db.addFavourite(f);
						db.close();
						alert.showAlertDialog(InstituteHome.this, "Success", "Added to favourites", true);
					}
					catch(SQLiteConstraintException e)
					{
						alert.showAlertDialog(InstituteHome.this, "Sorry !", "Already Added to favourites", false);
					}
						
					} 
		   	 }); 
	    	
	    	like_but.setOnClickListener(new OnClickListener() {

				@Override
				public void onClick(View arg0) {
					AlertDialogManager alert = new AlertDialogManager();
					try
					{
						DatabaseHandler1 db = new DatabaseHandler1(InstituteHome.this);
						db.addLike(id);
						db.close();
						MyTask1 m = new MyTask1();
						m.execute();
						alert.showAlertDialog(InstituteHome.this, "Success", "Institute Liked", true);
					}
					catch(SQLiteConstraintException e)
					{
						alert.showAlertDialog(InstituteHome.this, "Sorry !", "You Have already liked this institute", false);
					}
					
				}
	    	});
	 }
	 public class MyTask extends AsyncTask<String,Void,Void>
     {
		  RestServiceUrl s = new RestServiceUrl();
			@Override
			protected Void doInBackground(String... arg0) {
				try
				{
				 StringBuilder sb=new StringBuilder(s.url+"institute_home/"+id);
		    	    String findlink=sb.toString();
		    	    HttpClient client=new DefaultHttpClient();
		    	   	    HttpGet request=new HttpGet();
		    	   		request.setURI(new URI(findlink)) ;
		    	   		HttpResponse response=client.execute(request);
		    	   	
		    	    	DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();	
		    	   	   DocumentBuilder Builder=factory.newDocumentBuilder();
		    	   	 Document  dom=Builder.parse(response.getEntity().getContent());
		    	   	   dom.getDocumentElement().normalize();
		    	   	NodeList   nList5=dom.getElementsByTagName("Institutions");
		    	   	for(int temp=0;temp<nList5.getLength();temp++)
				  	{
				  		 Node nNode=nList5.item(temp);
				  		 if(nNode.getNodeType()==Node.ELEMENT_NODE)
				  		 {
				  			 		Element eElement=(Element)nNode;
				  			 	   Ins_name = getTagValue("Inst_name", eElement);
				  			 	   f.Ins_name = Ins_name;
				  			 	    Ins_logo = getTagValue("Inst_logo",eElement);
				  			 	    f.logo = Ins_logo;
				  			 	    Desc = getTagValue("Description",eElement);
				  			 	    phone = getTagValue("Inst_phone",eElement);
				  			 	    email = getTagValue("Inst_email",eElement);
				  			 	    web= getTagValue("Inst_web",eElement);
				  			 	    street = getTagValue("Street",eElement);
				  			 	    f.Street = street;
				  			 	    city = getTagValue("City",eElement);
				  			 	    f.City = city;
				  			 	    state = getTagValue("State",eElement);
				  			 	   f.State  = state;
				  			 	    category = getTagValue("Category",eElement);
				  			 	    f.Category = category;
				  		 }
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
				ImageLoader imgLoader = new ImageLoader(InstituteHome.this);
				TextView t1 = (TextView)findViewById(R.id.textView1);
				ScrollView s = (ScrollView)findViewById(R.id.scroll1);
				TextView t2 = (TextView)s.findViewById(R.id.textView2);
				TextView t3 = (TextView)findViewById(R.id.textView5);
				TextView t4 = (TextView)findViewById(R.id.textView6);
				TextView t5 = (TextView)findViewById(R.id.textView7);
				
				ImageView i = (ImageView)findViewById(R.id.imageView1);
				t1.setText(Ins_name);
				t2.setText(Desc);
				t3.setText(phone);
				t4.setText(email);
				t5.setText(web);
				
				imgLoader.DisplayImage(Ins_logo, R.drawable.ic_launcher, i);
				
				super.onPostExecute(result);
			}
			
     }
	 public class MyTask1 extends AsyncTask<String,Void,Void>
     {
		 RestServiceUrl s = new RestServiceUrl();
		@Override
		protected Void doInBackground(String... arg0) {
			try
			{
			 StringBuilder sb=new StringBuilder(s.url+"mob_like/"+id);
	    	    String findlink=sb.toString();
	    	    HttpClient client=new DefaultHttpClient();
	    	   	    HttpGet request=new HttpGet();
	    	   		request.setURI(new URI(findlink)) ;
	    	   		HttpResponse response=client.execute(request);
	    	   	
	    	    	DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();	
	    	   	   DocumentBuilder Builder=factory.newDocumentBuilder();
	    	   	 Document  dom=Builder.parse(response.getEntity().getContent());
	    	   	  Element root =  dom.getDocumentElement();
	    	   	  like = root.getTextContent().toString();
			}
			catch(Exception e)
			{
				
			}
			return null;
		}

		@Override
		protected void onPostExecute(Void result) {
			
			super.onPostExecute(result);
		}
		 
     }

}
