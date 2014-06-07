package com.example.list2;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
public class WebViewActivity extends Activity {
	private WebView webView;
	

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.webview);
		WebView myWebView= (WebView) findViewById(R.id.webView1);
		Bundle extras = getIntent().getExtras();
		if(extras!=null)
		{
			String value = extras.getString("key");
			myWebView.loadUrl(value);
			finish();
		}
		//myWebView.setWebViewClient(new WebViewClient());
		//facebook.com/pages/School-Pandit/356968364419799?ref=hl
		//webView.getSettings().setJavaScriptEnabled(true);
		//myWebView.loadUrl("https://www.facebook.com/pages/School-Pandit/356968364419799?ref=hl");
 
	}

}

