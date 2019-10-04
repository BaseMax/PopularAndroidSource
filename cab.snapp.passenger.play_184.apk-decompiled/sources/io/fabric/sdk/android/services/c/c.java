package io.fabric.sdk.android.services.c;

import android.content.SharedPreferences;

public interface c {
    SharedPreferences.Editor edit();

    SharedPreferences get();

    boolean save(SharedPreferences.Editor editor);
}
