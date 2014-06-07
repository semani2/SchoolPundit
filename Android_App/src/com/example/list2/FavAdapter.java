package com.example.list2;

import java.util.ArrayList;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.sax.StartElementListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class FavAdapter extends BaseAdapter {
	private Activity activity;
	ArrayList<String> list1;
	ArrayList<String> list2;
	ArrayList<String> list3;
	ArrayList<String> list4;
	ArrayList<String> list5;
	ArrayList<String> list6;
	ArrayList<String> list7;
	
	public FavAdapter(Activity a,ArrayList<String> id,ArrayList<String> name,ArrayList<String> category,ArrayList<String> street,ArrayList<String> city,ArrayList<String> state,ArrayList<String> logo)
	{
		activity = a;
		list1 = id;
		list2 = name;
		list3 = category;
		list4 = street;
		list5 = city;
		list6 = state;
		list7 = logo;
	}
	@Override
	public int getCount() {
		return list1.size();
	}

	@Override
	public Object getItem(int arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getItemId(int arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		View v = convertView;
		if(list1.size() == 0)
		{
			LayoutInflater vi =
	                (LayoutInflater)activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			v = vi.inflate(R.layout.nofav,null);
			v.findViewById(R.id.textView1).setOnClickListener(new textViewClickListener());
			
		}
		else
		{
		// holder = null;
		ImageLoader imgLoader = new ImageLoader(activity);
		LayoutInflater vi =
                (LayoutInflater)activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		 v = vi.inflate(R.layout.fav_row, null);
		 v.findViewById(R.id.imageView2).setOnClickListener(new imageViewClickListener(position));
		 TextView t1 = (TextView) v.findViewById(R.id.textView1);
        TextView t2 = (TextView) v.findViewById(R.id.textView2);
        TextView t3 = (TextView)v.findViewById(R.id.textView3);
         TextView t4 = (TextView) v.findViewById(R.id.textView4);
       TextView  t5= (TextView) v.findViewById(R.id.textView5);
       TextView t6 = (TextView) v.findViewById(R.id.textView6);
        ImageView i = (ImageView) v.findViewById(R.id.imageView1);
        
        t1.setText(list2.get(position));
       t2.setText(list4.get(position));
       t3.setText(list5.get(position));
         t4.setText(list6.get(position));
       t5.setText(list3.get(position));
       t6.setText(list1.get(position));
        
         String url = (list7.get(position)).toString();
         imgLoader.DisplayImage(url, R.drawable.ic_launcher, i);
		}
         return v;
	}
	private class imageViewClickListener implements OnClickListener {
		   int position;
		   String id = "";
		   public imageViewClickListener( int pos)
	        {
	            this.position = pos;
	        }

		@Override
		public void onClick(View v) {
		 String ins_id = "";
			String logo1 = "";
			
			
			ins_id = list1.get(position);
			logo1 = list7.get(position).toString();
			id = ins_id;
		//	AlertDialogManager alert = new AlertDialogManager();
		//	alert.showAlertDialog(activity, "Clicked", logo1, true);
			
		 new AlertDialog.Builder(activity)
		        .setIcon(android.R.drawable.ic_dialog_alert)
		        .setTitle("Remove Favourite")
		        .setMessage("Are you sure you want to delete this Favourite?")
		        .setPositiveButton("Yes", new DialogInterface.OnClickListener()
		    {
		        @Override
		        public void onClick(DialogInterface dialog, int which) {
		        	DatabaseHandler db = new DatabaseHandler(activity);
		        	db.deleteFavourite(id);
		        	list1.remove(position);
					 notifyDataSetChanged();
					 Intent i = new Intent(activity, MyFavourites.class);
					 activity.finish();
					 activity.startActivity(i);
		        }

		    })
		    .setNegativeButton("No", null)
		    .show();
		}
	}
	private class textViewClickListener implements OnClickListener
	{

		@Override
		public void onClick(View v) {
			Intent i = new Intent(activity,SearchResults.class);
			activity.startActivity(i);
		}
		
		
	}
	
}
