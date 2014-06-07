package com.example.list2;


import java.util.ArrayList;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MyAdapter extends BaseAdapter {
	private Activity activity;
	ArrayList<String> list1;
	ArrayList<String> list2;
	ArrayList<String> list3;
	ArrayList<String> list4;
	ArrayList<String> list5;
	ArrayList<String> list6;
	ArrayList<String> list7;
	ArrayList<String> list8;
	 public MyAdapter(Activity a, ArrayList<String> col_name, ArrayList<String> col_street, ArrayList<String> col_city,ArrayList<String> no_of_likes,ArrayList<String> Inst_logo,ArrayList<String> Inst_id,ArrayList<String> Category,ArrayList<String> State) {
		 list1 = col_name;
		 activity = a;
		 list2 = col_street;
		 list3 = col_city;
		 list4 = no_of_likes;
		 list5 = Inst_logo;
		 list6 = Inst_id;
		 list7 = Category;
		 list8 = State;
		 //ImageLoader imgLoader = new ImageLoader(a);
	 }

	@Override
	public int getCount() {
		
		return list1.size();
	}

	@Override
	public Object getItem(int position) {
		
		return null;
	}

	@Override
	public long getItemId(int position) {
		
		return 0;
	}
	 

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		 View v = convertView;
	     
		 ImageLoader imgLoader = new ImageLoader(activity);
	            LayoutInflater vi =
	                (LayoutInflater)activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	            v = vi.inflate(R.layout.list_row, null);
	            
	            TextView t1 = (TextView) v.findViewById(R.id.textView1);
	             TextView t2 = (TextView) v.findViewById(R.id.textView2);
	             TextView t3 = (TextView) v.findViewById(R.id.textView3);
	             TextView t4 = (TextView) v.findViewById(R.id.textView4);
	            EditText et = (EditText) v.findViewById(R.id.editText1);
	            TextView t5 = (TextView) v.findViewById(R.id.textView5);
	            TextView t6 = (TextView) v.findViewById(R.id.textView6);
	           ImageView i = (ImageView) v.findViewById(R.id.imageView1);
	             // Displaying in list
	            t1.setText(list1.get(position));
	            t2.setText(list2.get(position));
	            t3.setText(list3.get(position));
	            t4.setText(list4.get(position));
	            
	            et.setText(list6.get(position));
	            String url = list5.get(position).toString();
	            t5.setText(list7.get(position));
	            t6.setText(list8.get(position));
	            imgLoader.DisplayImage(url, R.drawable.ic_launcher, i);
	            return v;
	            
	           
	}
	public void clearAdapter()
    {
        list1.clear();
        list2.clear();
        list3.clear();
        list4.clear();
        list5.clear();
        list6.clear();
        list7.clear();
        list8.clear();
        notifyDataSetChanged();
    }
	     
	}
	


