package com.koushikdutta.async.http;

import android.net.Uri;

public final class c extends d {
    public static final String METHOD = "GET";

    public c(String str) {
        super(Uri.parse(str), "GET");
    }

    public c(Uri uri) {
        super(uri, "GET");
    }
}
