package c.c.a.e.d.i;

import android.os.Build;
import android.os.StatFs;
import h.a.u;
import h.f.b.j;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: StorageHelper.kt */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public final int f5212a = 5242880;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, Long> f5213b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    public final ReentrantLock f5214c = new ReentrantLock(true);

    public static /* synthetic */ boolean a(y yVar, File file, long j2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j2 = 20971520;
        }
        return yVar.a(file, j2);
    }

    public final void b(String str, long j2) {
        j.b(str, "entityId");
        synchronized (this.f5214c) {
            Map<String, Long> map = this.f5213b;
            Map<String, Long> map2 = this.f5213b;
            long j3 = map2.get(str);
            if (j3 == null) {
                j3 = 0L;
                map2.put(str, 0L);
            }
            Long put = map.put(str, Long.valueOf(j3.longValue() + j2));
        }
    }

    public final boolean a(File file, long j2) {
        StatFs statFs;
        long j3;
        long j4;
        long j5;
        j.b(file, "file");
        if (file.getParentFile().exists()) {
            statFs = new StatFs(file.getParent());
        } else {
            statFs = file.exists() ? new StatFs(file.getPath()) : null;
        }
        if (statFs == null) {
            j3 = (long) this.f5212a;
        } else {
            if (Build.VERSION.SDK_INT >= 18) {
                j5 = statFs.getBlockSizeLong();
                j4 = statFs.getAvailableBlocksLong();
            } else {
                j5 = (long) statFs.getBlockSize();
                j4 = (long) statFs.getAvailableBlocks();
            }
            j3 = j5 * j4;
        }
        return (j2 + ((long) this.f5212a)) + a() < j3;
    }

    public final void a(String str, long j2) {
        j.b(str, "entityId");
        synchronized (this.f5214c) {
            Long l2 = this.f5213b.get(str);
            if (l2 != null) {
                Long put = this.f5213b.put(str, Long.valueOf(l2.longValue() - j2));
            }
        }
    }

    public final void a(String str) {
        j.b(str, "entityId");
        synchronized (this.f5214c) {
            Long remove = this.f5213b.remove(str);
        }
    }

    public final long a() {
        long g2;
        synchronized (this.f5214c) {
            g2 = u.g((Iterable<Long>) this.f5213b.values());
        }
        return g2;
    }
}
