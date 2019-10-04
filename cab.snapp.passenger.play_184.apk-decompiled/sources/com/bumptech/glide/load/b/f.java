package com.bumptech.glide.load.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.d;

interface f {

    public interface a {
        void onDataFetcherFailed(d dVar, Exception exc, com.bumptech.glide.load.a.d<?> dVar2, DataSource dataSource);

        void onDataFetcherReady(d dVar, Object obj, com.bumptech.glide.load.a.d<?> dVar2, DataSource dataSource, d dVar3);

        void reschedule();
    }

    void cancel();

    boolean startNext();
}
