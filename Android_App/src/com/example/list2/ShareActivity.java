package com.example.list2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class ShareActivity extends Activity {
	private Button button;
	private Button button1,button_mail,button_feedback;
	String textSubject="Feedback on SchoolPandit Android App";
	String email2="5y.schoolpandit@gmail.com";
	String textSubject1="Check out this android application for educational institutes";
	String url="http://www.play.google.com/apps";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.sharemdpi);
		button = (Button) findViewById(R.id.buttonUrl);
		button1=(Button) findViewById(R.id.buttonUrl1);
		button_mail = (Button)findViewById(R.id.button1);
		button_feedback=(Button)findViewById(R.id.button2);
		button.setOnClickListener(new OnClickListener() {
			
		

		@Override
		public void onClick(View arg0) {
			
			Intent intent = new Intent(ShareActivity.this, WebViewActivity.class);
			intent.putExtra("key","http://facebook.com/pages/School-Pandit/356968364419799?ref=hl");
		   startActivity(intent);
			
		}
 
		});
		button1.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
			Intent intent1=new Intent(ShareActivity.this,WebViewActivity.class);
			intent1.putExtra("key","https://twitter.com/SchoolPandit1");
			startActivity(intent1);
			
			}
		});
			
		
	
	button_mail.setOnClickListener(new OnClickListener() {
		
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			 Intent email = new Intent(Intent.ACTION_SEND);
			  //email.putExtra(Intent.EXTRA_EMAIL, new String[]{ to});
			  
			  email.putExtra(Intent.EXTRA_SUBJECT, textSubject1);
			  email.putExtra(Intent.EXTRA_TEXT,url);
			  email.setType("message/rfc822");
			  
			  startActivity(Intent.createChooser(email, "Choose an Email client :"));
			  finish();
			
		}
	});
	button_feedback.setOnClickListener(new OnClickListener() {
		
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			 
			Intent email1=new Intent(Intent.ACTION_SEND);
			email1.putExtra(Intent.EXTRA_EMAIL,email2);
			email1.putExtra(Intent.EXTRA_SUBJECT,textSubject);
			email1.setType("message/rfc822");
			 startActivity(Intent.createChooser(email1, "Choose an Email client :"));
			  finish();
			
			
		}
	});
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}

