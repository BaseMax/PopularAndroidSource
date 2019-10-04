package c.b.a.c.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: DiskCacheStrategy */
class k extends p {
    public boolean a() {
        return true;
    }

    public boolean a(DataSource dataSource) {
        return dataSource == DataSource.REMOTE;
    }

    public boolean b() {
        return true;
    }

    public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
        return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
    }
}
