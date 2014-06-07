package com.example.list2;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ImageView;
 
public class AndroidLoadImageFromURLActivity extends Activity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.img_demo);
 
        // Loader image - will be shown before loading image
        int loader = R.drawable.ic_launcher;
 
        // Imageview to show
        ImageView image = (ImageView) findViewById(R.id.imageView1);
      //  ImageView image2 = (ImageView) findViewById(R.id.imageView2);
        // Image url
        String image_url = "http://192.168.2.90:8080/images/bgoverlay.png";
        String image_url1 = "http://192.168.2.90:8080/images/meditation-6.jpg";
        // ImageLoader class instance
        ImageLoader imgLoader = new ImageLoader(getApplicationContext());
 
        // whenever you want to load an image from url
        // call DisplayImage function
        // url - image url to load
        // loader - loader image, will be displayed before getting image
        // image - ImageView
        imgLoader.DisplayImage(image_url, loader, image);
       // imgLoader.DisplayImage(image_url1, loader, image2);
    }
}