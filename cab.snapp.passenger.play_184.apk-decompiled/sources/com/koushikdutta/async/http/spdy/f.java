package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.l;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;

interface f extends Closeable {
    void ackSettings() throws IOException;

    void connectionPreface() throws IOException;

    void data(boolean z, int i, l lVar) throws IOException;

    void goAway(int i, d dVar, byte[] bArr) throws IOException;

    void headers(int i, List<g> list) throws IOException;

    void ping(boolean z, int i, int i2) throws IOException;

    void pushPromise(int i, int i2, List<g> list) throws IOException;

    void rstStream(int i, d dVar) throws IOException;

    void settings(m mVar) throws IOException;

    void synReply(boolean z, int i, List<g> list) throws IOException;

    void synStream(boolean z, boolean z2, int i, int i2, List<g> list) throws IOException;

    void windowUpdate(int i, long j) throws IOException;
}
