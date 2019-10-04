package com.bumptech.glide.load;

import com.bumptech.glide.load.b.v;
import java.io.IOException;

public interface h<T, Z> {
    v<Z> decode(T t, int i, int i2, g gVar) throws IOException;

    boolean handles(T t, g gVar) throws IOException;
}
