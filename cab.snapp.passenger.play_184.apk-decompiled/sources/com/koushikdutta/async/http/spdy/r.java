package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.e;
import com.koushikdutta.async.k;
import com.koushikdutta.async.n;

interface r {
    Protocol getProtocol();

    int maxFrameSize();

    e newReader(n nVar, e.a aVar, boolean z);

    f newWriter(k kVar, boolean z);
}
