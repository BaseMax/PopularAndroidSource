package com.koushikdutta.async.http.e;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.http.e;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.j;
import com.koushikdutta.async.q;
import java.io.File;
import java.io.InputStream;
import org.a.c;

public interface d extends a, q {
    int code();

    d code(int i);

    void end();

    n getHeaders();

    j getSocket();

    void onCompleted(Exception exc);

    void proxy(e eVar);

    void redirect(String str);

    void send(String str);

    void send(String str, String str2);

    void send(String str, byte[] bArr);

    void send(c cVar);

    void sendFile(File file);

    void sendStream(InputStream inputStream, long j);

    void setContentType(String str);

    void writeHead();
}
