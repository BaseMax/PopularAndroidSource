package com.koushikdutta.ion.loader;

import android.net.Uri;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.n;

public interface AsyncHttpRequestFactory {
    d createAsyncHttpRequest(Uri uri, String str, n nVar);
}
