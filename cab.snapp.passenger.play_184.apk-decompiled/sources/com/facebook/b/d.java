package com.facebook.b;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import javax.annotation.Nullable;
import org.eclipse.paho.a.a.w;

public class d extends l {
    public static final int ON_LD_LIBRARY_PATH = 2;
    public static final int RESOLVE_DEPENDENCIES = 1;

    /* renamed from: b  reason: collision with root package name */
    protected final File f2428b;
    protected final int c;

    public d(File file, int i) {
        this.f2428b = file;
        this.c = i;
    }

    public int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return a(str, i, this.f2428b, threadPolicy);
    }

    /* access modifiers changed from: protected */
    public final int a(String str, int i, File file, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" not found on ");
            sb.append(file.getCanonicalPath());
            return 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" found on ");
        sb2.append(file.getCanonicalPath());
        if ((i & 1) == 0 || (this.c & 2) == 0) {
            if ((this.c & 1) != 0) {
                a(file2, i, threadPolicy);
            }
            try {
                k.f2443b.load(file2.getAbsolutePath(), i);
                return 1;
            } catch (UnsatisfiedLinkError e) {
                if (e.getMessage().contains("bad ELF magic")) {
                    return 3;
                }
                throw e;
            }
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(" loaded implicitly");
            return 2;
        }
    }

    @Nullable
    public String getLibraryPath(String str) throws IOException {
        File file = new File(this.f2428b, str);
        if (file.exists()) {
            return file.getCanonicalPath();
        }
        return null;
    }

    private static void a(File file, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        String[] a2 = a(file);
        new StringBuilder("Loading lib dependencies: ").append(Arrays.toString(a2));
        for (String str : a2) {
            if (!str.startsWith(w.TOPIC_LEVEL_SEPARATOR)) {
                k.a(str, i | 1, threadPolicy);
            }
        }
    }

    private static String[] a(File file) throws IOException {
        if (k.f2442a) {
            a.beginTraceSection("SoLoader.getElfDependencies[" + file.getName() + "]");
        }
        try {
            return h.extract_DT_NEEDED(file);
        } finally {
            if (k.f2442a) {
                a.endSection();
            }
        }
    }

    @Nullable
    public File unpackLibrary(String str) throws IOException {
        File file = new File(this.f2428b, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public void addToLdLibraryPath(Collection<String> collection) {
        collection.add(this.f2428b.getAbsolutePath());
    }

    public String toString() {
        String str;
        try {
            str = String.valueOf(this.f2428b.getCanonicalPath());
        } catch (IOException unused) {
            str = this.f2428b.getName();
        }
        return getClass().getName() + "[root = " + str + " flags = " + this.c + ']';
    }
}
