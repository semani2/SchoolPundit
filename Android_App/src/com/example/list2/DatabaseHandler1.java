package com.example.list2;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;


public class DatabaseHandler1 extends SQLiteOpenHelper {
	 // All Static variables
    // Database Version
    private static final int DATABASE_VERSION = 1;
 // Database Name
    private static final String DATABASE_NAME = "usermanager2";

    // Likes table name
    private static final String TABLE_LIKE = "likes";
    
    // Like table column names
    private static final String LIKE_INSTITUTE_ID = "institute_id";
    
	public DatabaseHandler1(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
        
		
    }

	@Override
	public void onCreate(SQLiteDatabase db) {
		
		String create_query1 = "CREATE TABLE "+TABLE_LIKE+"("+LIKE_INSTITUTE_ID+" TEXT PRIMARY KEY"+")";
		db.execSQL(create_query1);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		 db.execSQL("DROP TABLE IF EXISTS " + TABLE_LIKE);
		  db.close();
	        // Create tables again
	        onCreate(db);
	}
	//Adding new entry to likes table
	   public void addLike(String id)
	   {
		   SQLiteDatabase db = this.getWritableDatabase();
	       ContentValues values = new ContentValues();
	       values.put(LIKE_INSTITUTE_ID, id);
		   db.insertOrThrow(TABLE_LIKE, null, values);
		   db.close();
	   }
	    

}
