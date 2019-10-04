package com.bumptech.glide.load.a;

import java.io.IOException;

public interface e<T> {

    public interface a<T> {
        e<T> build(T t);

        Class<T> getDataClass();
    }

    void cleanup();

    T rewindAndGet() throws IOException;
}
