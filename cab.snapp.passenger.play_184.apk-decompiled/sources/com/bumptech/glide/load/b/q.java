package com.bumptech.glide.load.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.d;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class q extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private static final StackTraceElement[] f2233a = new StackTraceElement[0];

    /* renamed from: b  reason: collision with root package name */
    private final List<Throwable> f2234b;
    private d c;
    private DataSource d;
    private Class<?> e;
    private String f;
    private Exception g;

    static final class a implements Appendable {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f2235a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2236b = true;

        private static CharSequence a(CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        a(Appendable appendable) {
            this.f2235a = appendable;
        }

        public final Appendable append(char c) throws IOException {
            boolean z = false;
            if (this.f2236b) {
                this.f2236b = false;
                this.f2235a.append("  ");
            }
            if (c == 10) {
                z = true;
            }
            this.f2236b = z;
            this.f2235a.append(c);
            return this;
        }

        public final Appendable append(CharSequence charSequence) throws IOException {
            CharSequence a2 = a(charSequence);
            return append(a2, 0, a2.length());
        }

        public final Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence a2 = a(charSequence);
            boolean z = false;
            if (this.f2236b) {
                this.f2236b = false;
                this.f2235a.append("  ");
            }
            if (a2.length() > 0 && a2.charAt(i2 - 1) == 10) {
                z = true;
            }
            this.f2236b = z;
            this.f2235a.append(a2, i, i2);
            return this;
        }
    }

    public final Throwable fillInStackTrace() {
        return this;
    }

    public q(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    public q(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    public q(String str, List<Throwable> list) {
        this.f = str;
        setStackTrace(f2233a);
        this.f2234b = list;
    }

    /* access modifiers changed from: package-private */
    public final void a(d dVar, DataSource dataSource, Class<?> cls) {
        this.c = dVar;
        this.d = dataSource;
        this.e = cls;
    }

    public final void setOrigin(Exception exc) {
        this.g = exc;
    }

    public final Exception getOrigin() {
        return this.g;
    }

    public final List<Throwable> getCauses() {
        return this.f2234b;
    }

    public final List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        a((Throwable) this, (List<Throwable>) arrayList);
        return arrayList;
    }

    public final void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            rootCauses.get(i);
            i = i2;
        }
    }

    private void a(Throwable th, List<Throwable> list) {
        if (th instanceof q) {
            for (Throwable a2 : ((q) th).getCauses()) {
                a(a2, list);
            }
            return;
        }
        list.add(th);
    }

    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    public final void printStackTrace(PrintStream printStream) {
        a(printStream);
    }

    public final void printStackTrace(PrintWriter printWriter) {
        a(printWriter);
    }

    private void a(Appendable appendable) {
        a((Throwable) this, appendable);
        a(getCauses(), (Appendable) new a(appendable));
    }

    public final String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f);
        String str3 = "";
        if (this.e != null) {
            str = ", " + this.e;
        } else {
            str = str3;
        }
        sb.append(str);
        if (this.d != null) {
            str2 = ", " + this.d;
        } else {
            str2 = str3;
        }
        sb.append(str2);
        if (this.c != null) {
            str3 = ", " + this.c;
        }
        sb.append(str3);
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            sb.append(" causes:");
        }
        for (Throwable next : rootCauses) {
            sb.append(10);
            sb.append(next.getClass().getName());
            sb.append('(');
            sb.append(next.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    private static void a(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append(10);
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    private static void a(List<Throwable> list, Appendable appendable) {
        try {
            b(list, appendable);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void b(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof q) {
                ((q) th).a(appendable);
            } else {
                a(th, appendable);
            }
            i = i2;
        }
    }
}
