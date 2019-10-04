package io.fabric.sdk.android.services.b;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.k;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class b<T> {
    public static final int MAX_BYTE_SIZE_PER_FILE = 8000;
    public static final int MAX_FILES_IN_BATCH = 1;
    public static final int MAX_FILES_TO_KEEP = 100;
    public static final String ROLL_OVER_FILE_NAME_SEPARATOR = "_";

    /* renamed from: a  reason: collision with root package name */
    private final int f6566a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f6567b;
    protected final a<T> c;
    protected final k d;
    protected final c e;
    protected volatile long f;
    protected final List<d> g = new CopyOnWriteArrayList();

    static class a {

        /* renamed from: a  reason: collision with root package name */
        final File f6569a;

        /* renamed from: b  reason: collision with root package name */
        final long f6570b;

        public a(File file, long j) {
            this.f6569a = file;
            this.f6570b = j;
        }
    }

    /* access modifiers changed from: protected */
    public abstract String generateUniqueRollOverFileName();

    /* access modifiers changed from: protected */
    public int getMaxByteSizePerFile() {
        return 8000;
    }

    public b(Context context, a<T> aVar, k kVar, c cVar, int i) throws IOException {
        this.f6567b = context.getApplicationContext();
        this.c = aVar;
        this.e = cVar;
        this.d = kVar;
        this.f = this.d.getCurrentTimeMillis();
        this.f6566a = i;
    }

    public void writeEvent(T t) throws IOException {
        byte[] bytes = this.c.toBytes(t);
        int length = bytes.length;
        if (!this.e.canWorkingFileStore(length, getMaxByteSizePerFile())) {
            i.logControlled(this.f6567b, 4, c.TAG, String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[]{Integer.valueOf(this.e.getWorkingFileUsedSizeInBytes()), Integer.valueOf(length), Integer.valueOf(getMaxByteSizePerFile())}));
            rollFileOver();
        }
        this.e.add(bytes);
    }

    public void registerRollOverListener(d dVar) {
        if (dVar != null) {
            this.g.add(dVar);
        }
    }

    public boolean rollFileOver() throws IOException {
        String str;
        boolean z = true;
        if (!this.e.isWorkingFileEmpty()) {
            str = generateUniqueRollOverFileName();
            this.e.rollOver(str);
            i.logControlled(this.f6567b, 4, c.TAG, String.format(Locale.US, "generated new file %s", new Object[]{str}));
            this.f = this.d.getCurrentTimeMillis();
        } else {
            str = null;
            z = false;
        }
        for (d onRollOver : this.g) {
            try {
                onRollOver.onRollOver(str);
            } catch (Exception e2) {
                i.logControlledError(this.f6567b, "One of the roll over listeners threw an exception", e2);
            }
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public int getMaxFilesToKeep() {
        return this.f6566a;
    }

    public long getLastRollOverTime() {
        return this.f;
    }

    public List<File> getBatchOfFilesToSend() {
        return this.e.getBatchOfFilesToSend(1);
    }

    public void deleteSentFiles(List<File> list) {
        this.e.deleteFilesInRollOverDirectory(list);
    }

    public void deleteAllEventsFiles() {
        c cVar = this.e;
        cVar.deleteFilesInRollOverDirectory(cVar.getAllFilesInRollOverDirectory());
        this.e.deleteWorkingFile();
    }

    public void deleteOldestInRollOverIfOverMax() {
        List<File> allFilesInRollOverDirectory = this.e.getAllFilesInRollOverDirectory();
        int maxFilesToKeep = getMaxFilesToKeep();
        if (allFilesInRollOverDirectory.size() > maxFilesToKeep) {
            int size = allFilesInRollOverDirectory.size() - maxFilesToKeep;
            i.logControlled(this.f6567b, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[]{Integer.valueOf(allFilesInRollOverDirectory.size()), Integer.valueOf(maxFilesToKeep), Integer.valueOf(size)}));
            TreeSet treeSet = new TreeSet(new Comparator<a>() {
                public final int compare(a aVar, a aVar2) {
                    return (int) (aVar.f6570b - aVar2.f6570b);
                }
            });
            for (File next : allFilesInRollOverDirectory) {
                treeSet.add(new a(next, parseCreationTimestampFromFileName(next.getName())));
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).f6569a);
                if (arrayList.size() == size) {
                    break;
                }
            }
            this.e.deleteFilesInRollOverDirectory(arrayList);
        }
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
}
