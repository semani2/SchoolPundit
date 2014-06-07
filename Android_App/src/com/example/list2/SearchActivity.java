package com.example.list2;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;

public class SearchActivity extends Activity {
	
	String name  = "", category = "", location ="";
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.searchmdpi);	
		ImageButton b = (ImageButton)findViewById(R.id.imageButton1);
		final EditText et = (EditText)findViewById(R.id.editText1);
		final Spinner cat = (Spinner)findViewById(R.id.spinner1);
		final Spinner loc = (Spinner)findViewById(R.id.spinner2);
		 b.setOnClickListener(new ImageButton.OnClickListener(){

				@Override
				public void onClick(View arg0) {
					AlertDialogManager alert = new AlertDialogManager();
					name = et.getText().toString();
					if(name.length() == 0 )
					{
						alert.showAlertDialog(SearchActivity.this, "Input Error", "Please enter a name to search", false);
					}
					else if(name.length() < 3)
					{
						alert.showAlertDialog(SearchActivity.this, "Input Error", "Please enter a minimum of 3 characters", false);
					}
					else
					{
					name = name.replaceAll(" ", "%20");
					category = cat.getSelectedItem().toString();
					location = loc.getSelectedItem().toString();
					int cat_pos = cat.getSelectedItemPosition();
					int loc_pos =  loc.getSelectedItemPosition();
					Intent i = new Intent(getApplicationContext(), SearchResults.class);
				 i.putExtra("search", name);
				 i.putExtra("category",category);
				 i.putExtra("location", location);
				 i.putExtra("cat_pos", cat_pos);
				 i.putExtra("loc_pos", loc_pos);
					 startActivity(i);
					}
				}
		  		   
		  	   });
	}
	
	public class MyTask extends AsyncTask<String,Void,Void>
    {

		@Override
		protected Void doInBackground(String... arg0) {

			//TextView t = (TextView)findViewById(R.id.textView5);
			
			
			return null;
		}
		
    }
	
	

}
