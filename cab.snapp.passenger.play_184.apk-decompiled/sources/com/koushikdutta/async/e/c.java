package com.koushikdutta.async.e;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    static MessageDigest f4516a = null;
    private static String j = "MD5";

    /* renamed from: b  reason: collision with root package name */
    boolean f4517b;
    Random c = new Random();
    long d = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
    b e;
    File f;
    long g;
    Comparator<File> h = new Comparator<File>() {
        public final int compare(File file, File file2) {
            long lastModified = file.lastModified();
            long lastModified2 = file2.lastModified();
            if (lastModified < lastModified2) {
                return -1;
            }
            return lastModified2 > lastModified ? 1 : 0;
        }
    };
    boolean i;

    class a {

        /* renamed from: a  reason: collision with root package name */
        final long f4520a;

        public a(File file) {
            this.f4520a = file.length();
        }
    }

    class b extends f<String, a> {
        /* access modifiers changed from: protected */
        public final /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
            String str = (String) obj;
            a aVar = (a) obj3;
            super.entryRemoved(z, str, (a) obj2, aVar);
            if (aVar == null && !c.this.i) {
                new File(c.this.f, str).delete();
            }
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ long sizeOf(Object obj, Object obj2) {
            return Math.max(c.this.d, ((a) obj2).f4520a);
        }

        public b() {
            super(c.this.g);
        }
    }

    private static MessageDigest b() {
        if ("MD5".equals(j)) {
            for (Provider services : Security.getProviders()) {
                for (Provider.Service algorithm : services.getServices()) {
                    j = algorithm.getAlgorithm();
                    try {
                        MessageDigest instance = MessageDigest.getInstance(j);
                        if (instance != null) {
                            return instance;
                        }
                    } catch (NoSuchAlgorithmException unused) {
                    }
                }
            }
        }
        return null;
    }

    static {
        try {
            f4516a = MessageDigest.getInstance(j);
        } catch (NoSuchAlgorithmException e2) {
            MessageDigest b2 = b();
            f4516a = b2;
            if (b2 == null) {
                throw new RuntimeException(e2);
            }
        }
        try {
            f4516a = (MessageDigest) f4516a.clone();
        } catch (CloneNotSupportedException unused) {
        }
    }

    public static synchronized String toKeyString(Object... objArr) {
        String bigInteger;
        synchronized (c.class) {
            f4516a.reset();
            for (Object obj : objArr) {
                f4516a.update(obj.toString().getBytes());
            }
            bigInteger = new BigInteger(1, f4516a.digest()).toString(16);
        }
        return bigInteger;
    }

    public final File getTempFile() {
        File file;
        do {
            file = new File(this.f, new BigInteger(128, this.c).toString(16));
        } while (file.exists());
        return file;
    }

    public final File[] getTempFiles(int i2) {
        File[] fileArr = new File[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            fileArr[i3] = getTempFile();
        }
        return fileArr;
    }

    public static void removeFiles(File... fileArr) {
        if (fileArr != null) {
            for (File delete : fileArr) {
                delete.delete();
            }
        }
    }

    public final void remove(String str) {
        for (int i2 = 0; this.e.remove(a(str, i2)) != null; i2++) {
        }
        a(str);
    }

    public final boolean exists(String str, int i2) {
        return b(str, i2).exists();
    }

    public final boolean exists(String str) {
        return b(str, 0).exists();
    }

    public final File touch(File file) {
        this.e.get(file.getName());
        file.setLastModified(System.currentTimeMillis());
        return file;
    }

    public final FileInputStream get(String str) throws IOException {
        return new FileInputStream(touch(b(str, 0)));
    }

    public final File getFile(String str) {
        return touch(b(str, 0));
    }

    public final FileInputStream[] get(String str, int i2) throws IOException {
        FileInputStream[] fileInputStreamArr = new FileInputStream[i2];
        int i3 = 0;
        while (i3 < i2) {
            try {
                fileInputStreamArr[i3] = new FileInputStream(touch(b(str, i3)));
                i3++;
            } catch (IOException e2) {
                for (int i4 = 0; i4 < i2; i4++) {
                    g.closeQuietly(fileInputStreamArr[i4]);
                }
                remove(str);
                throw e2;
            }
        }
        return fileInputStreamArr;
    }

    private static String a(String str, int i2) {
        return str + "." + i2;
    }

    public final void commitTempFiles(String str, File... fileArr) {
        a(str);
        for (int i2 = 0; i2 < fileArr.length; i2++) {
            File file = fileArr[i2];
            File b2 = b(str, i2);
            if (!file.renameTo(b2)) {
                removeFiles(fileArr);
                remove(str);
                return;
            }
            remove(file.getName());
            this.e.put(a(str, i2), new a(b2));
        }
    }

    private void a(String str) {
        int i2 = 0;
        while (true) {
            File b2 = b(str, i2);
            if (b2.exists()) {
                b2.delete();
                i2++;
            } else {
                return;
            }
        }
    }

    private File b(String str, int i2) {
        return new File(this.f, a(str, i2));
    }

    public final void setBlockSize(long j2) {
        this.d = j2;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.i = true;
        try {
            File[] listFiles = this.f.listFiles();
            if (listFiles != null) {
                ArrayList arrayList = new ArrayList();
                Collections.addAll(arrayList, listFiles);
                Collections.sort(arrayList, this.h);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    File file = (File) it.next();
                    String name = file.getName();
                    this.e.put(name, new a(file));
                    this.e.get(name);
                }
                this.i = false;
            }
        } finally {
            this.i = false;
        }
    }

    private void c() {
        if (this.f4517b) {
            new Thread() {
                public final void run() {
                    c.this.a();
                }
            }.start();
        } else {
            a();
        }
    }

    public c(File file, long j2, boolean z) {
        this.f = file;
        this.g = j2;
        this.f4517b = z;
        this.e = new b();
        file.mkdirs();
        c();
    }

    public final long size() {
        return this.e.size();
    }

    public final void clear() {
        removeFiles(this.f.listFiles());
        this.e.evictAll();
    }

    public final Set<String> keySet() {
        HashSet hashSet = new HashSet();
        File[] listFiles = this.f.listFiles();
        if (listFiles == null) {
            return hashSet;
        }
        for (File name : listFiles) {
            String name2 = name.getName();
            int lastIndexOf = name2.lastIndexOf(46);
            if (lastIndexOf != -1) {
                hashSet.add(name2.substring(0, lastIndexOf));
            }
        }
        return hashSet;
    }

    public final void setMaxSize(long j2) {
        this.e.setMaxSize(j2);
        c();
    }
}
