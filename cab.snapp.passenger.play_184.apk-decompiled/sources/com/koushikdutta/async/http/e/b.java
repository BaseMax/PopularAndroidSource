package com.koushikdutta.async.http.e;

import com.koushikdutta.async.http.a.a;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.j;
import com.koushikdutta.async.n;
import java.util.regex.Matcher;

public interface b extends n {
    a getBody();

    com.koushikdutta.async.http.n getHeaders();

    Matcher getMatcher();

    String getMethod();

    String getPath();

    s getQuery();

    j getSocket();
}
