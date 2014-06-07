package com.example.list2;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHandler extends SQLiteOpenHelper {
	 // All Static variables
    // Database Version
    private static final int DATABASE_VERSION = 1;
 // Database Name
    private static final String DATABASE_NAME = "usermanager1";
 
    // Favourites table name
    private static final String TABLE_CONTACTS = "favourites";
  
    
    		// Contacts Table Columns names
    	    private static final String DEVICE_ID = "device_id";
    	    private static final String INSTITUTE_ID = "institute_id";
    	    private static final String INSTITUTE_NAME = "institute_name";
    	    private static final String CATEGORY = "category";
    	    private static final String STREET = "street";
    	    private static final String CITY = "city";
    	    private static final String STATE = "state";
    	    private static final String LOGO = "logo";
    	   
    	    
    	    public DatabaseHandler(Context context) {
    	        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    	    }


			@Override
			public void onCreate(SQLiteDatabase db) {
				String create_query = "CREATE TABLE "+TABLE_CONTACTS+"("+INSTITUTE_ID+" TEXT PRIMARY KEY,"+DEVICE_ID+" TEXT,"+INSTITUTE_NAME+" TEXT,"+CATEGORY+" TEXT,"+STREET+" TEXT,"+CITY+" TEXT,"+STATE+" TEXT,"+LOGO+" TEXT"+")";
				db.execSQL(create_query);
				
			}


			 // Upgrading database
		    @Override
		    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		        // Drop older table if existed
		        db.execSQL("DROP TABLE IF EXISTS " + TABLE_CONTACTS);
		       
		        db.close();
		        // Create tables again
		        onCreate(db);
		    }
		    //Adding new Entries to Favorites
		   public void addFavourite(Favourites i)
		    {
		    	SQLiteDatabase db = this.getWritableDatabase();
		        ContentValues values = new ContentValues();
		        values.put(INSTITUTE_ID,i.Institute_id);
		        values.put(DEVICE_ID,i.Device_id );
		        values.put(INSTITUTE_NAME, i.Ins_name);
		        values.put(CATEGORY,i.Category);
		        values.put(STREET, i.Street);
		        values.put(CITY,  i.City);
		        values.put(STATE, i.State);
		        values.put(LOGO, i.logo);

		        // Inserting Row
		        db.insertOrThrow(TABLE_CONTACTS, null, values);
		      db.close(); // Closing database connection
		    	
		    }
		  
		   
		    // Getting all contacts
		    public List<Favourites> getFavourites(String id )
		    {
		    	String deviceid = id;
				List<Favourites> list = new ArrayList<Favourites>();
				String query = "SELECT * FROM "+TABLE_CONTACTS+" WHERE device_id='"+deviceid+"'";
				 SQLiteDatabase db = this.getWritableDatabase();
			        Cursor cursor = db.rawQuery(query, null);
			        if (cursor.moveToFirst()) {
			            do {
			            	Favourites f = new Favourites();
			            	f.setInstituteId(cursor.getString(0));
			            	f.setDeviceId(cursor.getString(1));
			            	f.setInsName(cursor.getString(2));
			            	f.setCategory(cursor.getString(3));
			            	f.setStreet(cursor.getString(4));
			            	f.setCity(cursor.getString(5));
			            	f.setState(cursor.getString(6));
			            	f.setLogo(cursor.getString(7));
			            	list.add(f);
			            } while (cursor.moveToNext());
			        }
			        cursor.close();
			        db.close();
				return list;
		    }
    	 
		    public void deleteFavourite(String id) {
		        SQLiteDatabase db = this.getWritableDatabase();
		        db.delete(TABLE_CONTACTS, INSTITUTE_ID + " = ?",
		                new String[] { String.valueOf(id) });
		        db.close();
		    }
}
