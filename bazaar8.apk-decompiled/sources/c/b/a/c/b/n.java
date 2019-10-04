package c.b.a.c.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: DiskCacheStrategy */
class n extends p {
    public boolean a() {
        return false;
    }

    public boolean a(DataSource dataSource) {
        return false;
    }

    public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
        return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
    }

    public boolean b() {
        return true;
    }
}
