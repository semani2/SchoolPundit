package com.example.list2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

public class App_Home extends Activity {
	ImageView search ;
	ImageView fav , login ,share;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		setContentView(R.layout.app_home);
		search = (ImageView)findViewById(R.id.imageView2);
		fav = (ImageView)findViewById(R.id.imageView3);
		share = (ImageView)findViewById(R.id.imageView9);
		search.setOnClickListener(new searchClickListener());
		fav.setOnClickListener(new favClickListener());
		share.setOnClickListener(new shareClickListener());
	}
	
	private class searchClickListener implements OnClickListener {

		@Override
		public void onClick(View v) {
			Intent i = new Intent(getApplicationContext(), SearchActivity.class);
			startActivity(i);
			
		}
	
	}
	
	private class favClickListener implements OnClickListener {

		@Override
		public void onClick(View v) {
			Intent i = new Intent(getApplicationContext(), MyFavourites.class);
			startActivity(i);
			
		}
	
	}
	private class shareClickListener implements OnClickListener {

		@Override
		public void onClick(View v) {
			Intent i = new Intent(getApplicationContext(), ShareActivity.class);
			startActivity(i);
			
		}
	
	}
}
