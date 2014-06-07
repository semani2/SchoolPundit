package com.example.list2;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import android.widget.TextView;

public class MyFavourites extends Activity {
	ListView lv;
	FavAdapter adapter;
	ArrayList<String> College_name = new ArrayList<String>();
    ArrayList<String> College_street = new ArrayList<String>();
    ArrayList<String> College_city = new ArrayList<String>();
    ArrayList<String> State = new ArrayList<String>();
    ArrayList<String> Inst_logo = new ArrayList<String>();
    ArrayList<String> Institute_id = new ArrayList<String>();
    ArrayList<String> Category = new ArrayList<String>();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		 super.onCreate(savedInstanceState);
		 this.requestWindowFeature(Window.FEATURE_NO_TITLE);
	        setContentView(R.layout.myfav);
	        MyTask m = new MyTask();
	        m.execute();
	       
	}
	
	public class MyTask extends AsyncTask<String,Void,Void>
    {
		 
		DatabaseHandler db = new DatabaseHandler(MyFavourites.this);
		List<Favourites> l = new ArrayList<Favourites>();
		String id = Secure.getString(getApplicationContext().getContentResolver(),Secure.ANDROID_ID); 
		@Override
		protected Void doInBackground(String... arg0) {
			l = db.getFavourites(id);
			
			
				for(Favourites f : l)
				{
				College_name.add(f.Ins_name);
				Category.add(f.Category);
				College_street.add(f.Street);
				College_city.add(f.City);
				Institute_id.add(f.Institute_id);
				State.add(f.State);
				Inst_logo.add(f.logo);
				}
			
			return null;
		}
		@Override
		protected void onPostExecute(Void result) {
			final AlertDialogManager alert = new AlertDialogManager();
			if(l.size() ==0)
			{
				TextView t = (TextView)findViewById(R.id.textView2);
				t.setText("No Favourites found");
				t.setVisibility(0);
			}
			else
			{
			lv = (ListView) findViewById(R.id.listview);
			adapter = new FavAdapter(MyFavourites.this,Institute_id,College_name,Category,College_street,College_city,State,Inst_logo);
			 lv.setAdapter(adapter);
			 lv = (ListView) findViewById(R.id.listview);
			// listening to single list item on click
		        lv.setOnItemClickListener(new OnItemClickListener() {

					@Override
					public void onItemClick(AdapterView<?> parent, View view,
							int position, long id) {
						TextView t = (TextView)view.findViewById(R.id.textView6);
		            	 String institute_id = t.getText().toString();
		            	 Intent i = new Intent(getApplicationContext(), InstituteHome.class);
		                 // sending data to new activity
		                 i.putExtra("ins_id",institute_id);
		                 startActivity(i);
						// TODO Auto-generated method stub
						
					}
		         
		        });
			}    
		}
    
    }

}
