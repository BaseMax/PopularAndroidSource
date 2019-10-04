package com.webengage.sdk.android.actions.render;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import com.webengage.sdk.android.c;

public class WebEngageActivity extends Activity {
    public void onBackPressed() {
        super.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onPostResume() {
        super.onPostResume();
    }

    /* access modifiers changed from: protected */
    public void onRestart() {
        super.onRestart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        c.a(getApplicationContext()).start(this);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        c.a(getApplicationContext()).stop(this);
    }
}
