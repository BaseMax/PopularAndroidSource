package com.bumptech.glide.load.b.b;

import com.bumptech.glide.load.d;
import java.io.File;

public interface a {

    /* renamed from: com.bumptech.glide.load.b.b.a$a  reason: collision with other inner class name */
    public interface C0040a {
        public static final String DEFAULT_DISK_CACHE_DIR = "image_manager_disk_cache";
        public static final int DEFAULT_DISK_CACHE_SIZE = 262144000;

        a build();
    }

    public interface b {
        boolean write(File file);
    }

    void clear();

    void delete(d dVar);

    File get(d dVar);

    void put(d dVar, b bVar);
}
