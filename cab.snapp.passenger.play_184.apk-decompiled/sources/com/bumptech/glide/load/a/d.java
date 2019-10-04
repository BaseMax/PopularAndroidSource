package com.bumptech.glide.load.a;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

public interface d<T> {

    public interface a<T> {
        void onDataReady(T t);

        void onLoadFailed(Exception exc);
    }

    void cancel();

    void cleanup();

    Class<T> getDataClass();

    DataSource getDataSource();

    void loadData(Priority priority, a<? super T> aVar);
}
