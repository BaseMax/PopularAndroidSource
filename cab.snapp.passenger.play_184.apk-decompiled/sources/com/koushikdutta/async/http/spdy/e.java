package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.l;
import java.util.List;

interface e {

    public interface a {
        void ackSettings();

        void alternateService(int i, String str, c cVar, String str2, int i2, long j);

        void data(boolean z, int i, l lVar);

        void error(Exception exc);

        void goAway(int i, d dVar, c cVar);

        void headers(boolean z, boolean z2, int i, int i2, List<g> list, HeadersMode headersMode);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<g> list);

        void rstStream(int i, d dVar);

        void settings(boolean z, m mVar);

        void windowUpdate(int i, long j);
    }
}
