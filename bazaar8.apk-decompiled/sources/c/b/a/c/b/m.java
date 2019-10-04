package c.b.a.c.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: DiskCacheStrategy */
class m extends p {
    public boolean a() {
        return true;
    }

    public boolean a(DataSource dataSource) {
        return (dataSource == DataSource.DATA_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
    }

    public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
        return false;
    }

    public boolean b() {
        return false;
    }
}
