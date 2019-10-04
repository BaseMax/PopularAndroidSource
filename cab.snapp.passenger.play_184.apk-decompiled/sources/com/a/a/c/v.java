package com.a.a.c;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.i;
import java.io.File;
import java.util.Set;

final class v {

    /* renamed from: b  reason: collision with root package name */
    private static final b f1823b = new b((byte) 0);

    /* renamed from: a  reason: collision with root package name */
    t f1824a;
    private final Context c;
    private final a d;

    public interface a {
        File getLogFileDir();
    }

    static final class b implements t {
        public final void closeLogFile() {
        }

        public final void deleteLogFile() {
        }

        public final b getLogAsByteString() {
            return null;
        }

        public final void writeToLog(long j, String str) {
        }

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }
    }

    v(Context context, a aVar) {
        this(context, aVar, null);
    }

    v(Context context, a aVar, String str) {
        this.c = context;
        this.d = aVar;
        this.f1824a = f1823b;
        a(str);
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        this.f1824a.closeLogFile();
        this.f1824a = f1823b;
        if (str != null) {
            if (!i.getBooleanResourceValue(this.c, "com.crashlytics.CollectCustomLogs", true)) {
                c.getLogger().d(j.TAG, "Preferences requested no custom logs. Aborting log file creation.");
            } else {
                a(b(str));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final b a() {
        return this.f1824a.getLogAsByteString();
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.f1824a.deleteLogFile();
    }

    /* access modifiers changed from: package-private */
    public final void a(Set<String> set) {
        File[] listFiles = this.d.getLogFileDir().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                String name = file.getName();
                int lastIndexOf = name.lastIndexOf(".temp");
                if (lastIndexOf != -1) {
                    name = name.substring(20, lastIndexOf);
                }
                if (!set.contains(name)) {
                    file.delete();
                }
            }
        }
    }

    private void a(File file) {
        this.f1824a = new ad(file, 65536);
    }

    private File b(String str) {
        return new File(this.d.getLogFileDir(), "crashlytics-userlog-" + str + ".temp");
    }
}
