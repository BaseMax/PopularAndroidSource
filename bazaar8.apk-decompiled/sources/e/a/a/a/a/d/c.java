package e.a.a.a.a.d;

import android.content.Context;
import e.a.a.a.a.b.m;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: EventsFilesManager */
public abstract class c<T> {
    public static final int MAX_BYTE_SIZE_PER_FILE = 8000;
    public static final int MAX_FILES_IN_BATCH = 1;
    public static final int MAX_FILES_TO_KEEP = 100;
    public static final String ROLL_OVER_FILE_NAME_SEPARATOR = "_";
    public final Context context;
    public final m currentTimeProvider;
    public final int defaultMaxFilesToKeep;
    public final d eventStorage;
    public volatile long lastRollOverTime;
    public final List<e> rollOverListeners = new CopyOnWriteArrayList();
    public final a<T> transform;

    /* compiled from: EventsFilesManager */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final File f13742a;

        /* renamed from: b  reason: collision with root package name */
        public final long f13743b;

        public a(File file, long j2) {
            this.f13742a = file;
            this.f13743b = j2;
        }
    }

    public c(Context context2, a<T> aVar, m mVar, d dVar, int i2) {
        this.context = context2.getApplicationContext();
        this.transform = aVar;
        this.eventStorage = dVar;
        this.currentTimeProvider = mVar;
        this.lastRollOverTime = this.currentTimeProvider.a();
        this.defaultMaxFilesToKeep = i2;
    }

    private void rollFileOverIfNeeded(int i2) {
        if (!this.eventStorage.a(i2, getMaxByteSizePerFile())) {
            CommonUtils.a(this.context, 4, "Fabric", String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[]{Integer.valueOf(this.eventStorage.a()), Integer.valueOf(i2), Integer.valueOf(getMaxByteSizePerFile())}));
            rollFileOver();
        }
    }

    private void triggerRollOverOnListeners(String str) {
        for (e onRollOver : this.rollOverListeners) {
            try {
                onRollOver.onRollOver(str);
            } catch (Exception e2) {
                CommonUtils.a(this.context, "One of the roll over listeners threw an exception", (Throwable) e2);
            }
        }
    }

    public void deleteAllEventsFiles() {
        d dVar = this.eventStorage;
        dVar.a(dVar.c());
        this.eventStorage.d();
    }

    public void deleteOldestInRollOverIfOverMax() {
        List<File> c2 = this.eventStorage.c();
        int maxFilesToKeep = getMaxFilesToKeep();
        if (c2.size() > maxFilesToKeep) {
            int size = c2.size() - maxFilesToKeep;
            CommonUtils.c(this.context, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[]{Integer.valueOf(c2.size()), Integer.valueOf(maxFilesToKeep), Integer.valueOf(size)}));
            TreeSet treeSet = new TreeSet(new b(this));
            for (File next : c2) {
                treeSet.add(new a(next, parseCreationTimestampFromFileName(next.getName())));
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).f13742a);
                if (arrayList.size() == size) {
                    break;
                }
            }
            this.eventStorage.a((List<File>) arrayList);
        }
    }

    public void deleteSentFiles(List<File> list) {
        this.eventStorage.a(list);
    }

    public abstract String generateUniqueRollOverFileName();

    public List<File> getBatchOfFilesToSend() {
        return this.eventStorage.a(1);
    }

    public long getLastRollOverTime() {
        return this.lastRollOverTime;
    }

    public int getMaxByteSizePerFile() {
        return MAX_BYTE_SIZE_PER_FILE;
    }

    public int getMaxFilesToKeep() {
        return this.defaultMaxFilesToKeep;
    }

    public long parseCreationTimestampFromFileName(String str) {
        String[] split = str.split(ROLL_OVER_FILE_NAME_SEPARATOR);
        if (split.length != 3) {
            return 0;
        }
        try {
            return Long.valueOf(split[2]).longValue();
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public void registerRollOverListener(e eVar) {
        if (eVar != null) {
            this.rollOverListeners.add(eVar);
        }
    }

    public boolean rollFileOver() {
        String str;
        boolean z = true;
        if (!this.eventStorage.b()) {
            str = generateUniqueRollOverFileName();
            this.eventStorage.a(str);
            CommonUtils.a(this.context, 4, "Fabric", String.format(Locale.US, "generated new file %s", new Object[]{str}));
            this.lastRollOverTime = this.currentTimeProvider.a();
        } else {
            str = null;
            z = false;
        }
        triggerRollOverOnListeners(str);
        return z;
    }

    public void writeEvent(T t) {
        byte[] bytes = this.transform.toBytes(t);
        rollFileOverIfNeeded(bytes.length);
        this.eventStorage.a(bytes);
    }
}
