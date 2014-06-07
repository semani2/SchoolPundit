package com.example.list2;

import java.net.URI;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;


public class LoginActivity extends Activity {
	static String glo_password = "";
	static String glo_username = "";
	static String password = "";
	// Email, password edittext
    EditText txtUsername, txtPassword;
 
    // login button
    Button btnLogin;
 
    // Alert Dialog Manager
    AlertDialogManager alert = new AlertDialogManager();
 
    // Session Manager Class
    SessionManager session;
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.userlogin);
     // Session Manager
        session = new SessionManager(getApplicationContext());                
 
        // Email, Password input text
        txtUsername = (EditText) findViewById(R.id.editText2);
        txtPassword = (EditText) findViewById(R.id.editText3);
     // Login button
        btnLogin = (Button) findViewById(R.id.button2);
        
        // Login button click event
        btnLogin.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View arg0) {
				
					glo_username = txtUsername.getText().toString();
	                password = txtPassword.getText().toString();
	                if(glo_username.trim().length() > 0 && password.trim().length() > 0){
	                	 MyTask m = new MyTask();
	              	   m.execute();
	                }else{
	                    // user didn't entered username or password
	                    // Show alert asking him to enter the details
	                    alert.showAlertDialog(LoginActivity.this, "Login failed..", "Please enter username and password", false);
	                } 

	           }
	});

}
	 public class MyTask extends AsyncTask<String,Void,Void>
     {
		 Element root ;
		 String password1 = "";
		 AlertDialogManager alert = new AlertDialogManager();
		 RestServiceUrl s = new RestServiceUrl();
			@Override
			protected Void doInBackground(String... arg0) {
				try
				{
				 StringBuilder sb=new StringBuilder(s.url+"user_login/"+glo_username);
		    	    String findlink=sb.toString();
		    	    HttpClient client=new DefaultHttpClient();
		    	   	    HttpGet request=new HttpGet();
		    	   		request.setURI(new URI(findlink)) ;
		    	   		HttpResponse response=client.execute(request);
		    	   	
		    	    	DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();	
		    	   	   DocumentBuilder Builder=factory.newDocumentBuilder();
		    	   	 Document  dom=Builder.parse(response.getEntity().getContent());
		    	   	   dom.getDocumentElement().normalize();
		    	   	 root=dom.getDocumentElement();
		    	   	 password1 = root.getTextContent().toString();
		    	   	
		    	   	
				}
				catch(Exception e)
				{
					
				}
				return null;
			}

			@Override
			protected void onPostExecute(Void result) {
			 	
	    	   TextView t = (TextView)findViewById(R.id.textView2);
				t.setText(password1);
				if(password1.equals("Invalid user"))
				{
					 alert.showAlertDialog(LoginActivity.this, "Login failed..", "Invalid User", false);
					
				}
				else
				{
				if(LoginActivity.password.equals(password1)){
	    	   		 
                    // Creating user login session
                    // For testing i am stroing name, email as follow
                    // Use user real data
                    session.createLoginSession(glo_username);

                    // Staring MainActivity
                    Intent i = new Intent(getApplicationContext(), SearchActivity.class);
                    startActivity(i);
                    finish();

                }else{
                    // username / password doesn't match
                    alert.showAlertDialog(LoginActivity.this, "Login failed..", "Username/Password is incorrect", false);
                } 
				}
				super.onPostExecute(result);
			}
			
			
			
     }
}
