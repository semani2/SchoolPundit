package com.example.list2;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.widget.TextView;

public class DbDemo extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		DatabaseHandler db = new DatabaseHandler(DbDemo.this);
		   setContentView(R.layout.dbdemo);
		super.onCreate(savedInstanceState);
		List<Favourites> l = new ArrayList<Favourites>();
		String id = Secure.getString(getApplicationContext().getContentResolver(),Secure.ANDROID_ID); 
		l = db.getFavourites(id);
		String id1 = "";
		for(Favourites f : l)
		{
			 id1 = f.Institute_id;
			
		}
		TextView t = (TextView)findViewById(R.id.textView1);
		t.setText(id1);
	}
	
	
}
