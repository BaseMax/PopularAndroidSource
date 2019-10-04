package com.google.android.gms.analytics;

import android.content.Context;
import androidx.core.os.EnvironmentCompat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

public final class g implements b {

    /* renamed from: a  reason: collision with root package name */
    private final TreeSet<String> f2576a = new TreeSet<>();

    public g(Context context, Collection<String> collection) {
        setIncludedPackages(context, collection);
    }

    private static Throwable a(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public final void setIncludedPackages(Context context, Collection<String> collection) {
        this.f2576a.clear();
        HashSet<String> hashSet = new HashSet<>();
        if (collection != null) {
            hashSet.addAll(collection);
        }
        if (context != null) {
            hashSet.add(context.getApplicationContext().getPackageName());
        }
        for (String str : hashSet) {
            boolean z = true;
            Iterator<String> it = this.f2576a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (str.startsWith(next)) {
                    z = false;
                } else if (next.startsWith(str)) {
                    this.f2576a.remove(next);
                }
            }
            if (z) {
                this.f2576a.add(str);
            }
        }
    }

    public final String getDescription(String str, Throwable th) {
        StackTraceElement stackTraceElement;
        Throwable a2 = a(th);
        StackTraceElement[] stackTrace = a(th).getStackTrace();
        if (stackTrace != null && stackTrace.length != 0) {
            int length = stackTrace.length;
            int i = 0;
            loop0:
            while (true) {
                if (i >= length) {
                    stackTraceElement = stackTrace[0];
                    break;
                }
                stackTraceElement = stackTrace[i];
                String className = stackTraceElement.getClassName();
                Iterator<String> it = this.f2576a.iterator();
                while (it.hasNext()) {
                    if (className.startsWith(it.next())) {
                        break loop0;
                    }
                }
                i++;
            }
        } else {
            stackTraceElement = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(a2.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] split = stackTraceElement.getClassName().split("\\.");
            sb.append(String.format(" (@%s:%s:%s)", new Object[]{(split == null || split.length <= 0) ? EnvironmentCompat.MEDIA_UNKNOWN : split[split.length - 1], stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())}));
        }
        if (str != null) {
            sb.append(String.format(" {%s}", new Object[]{str}));
        }
        return sb.toString();
    }
}
