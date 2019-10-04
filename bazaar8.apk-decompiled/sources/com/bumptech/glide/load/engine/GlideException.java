package com.bumptech.glide.load.engine;

import android.util.Log;
import c.b.a.c.c;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class GlideException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public static final StackTraceElement[] f12069a = new StackTraceElement[0];
    public static final long serialVersionUID = 1;
    public final List<Throwable> causes;
    public Class<?> dataClass;
    public DataSource dataSource;
    public String detailMessage;
    public c key;

    private static final class a implements Appendable {

        /* renamed from: a  reason: collision with root package name */
        public final Appendable f12070a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f12071b = true;

        public a(Appendable appendable) {
            this.f12070a = appendable;
        }

        public final CharSequence a(CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        public Appendable append(char c2) {
            boolean z = false;
            if (this.f12071b) {
                this.f12071b = false;
                this.f12070a.append("  ");
            }
            if (c2 == 10) {
                z = true;
            }
            this.f12071b = z;
            this.f12070a.append(c2);
            return this;
        }

        public Appendable append(CharSequence charSequence) {
            CharSequence a2 = a(charSequence);
            append(a2, 0, a2.length());
            return this;
        }

        public Appendable append(CharSequence charSequence, int i2, int i3) {
            CharSequence a2 = a(charSequence);
            boolean z = false;
            if (this.f12071b) {
                this.f12071b = false;
                this.f12070a.append("  ");
            }
            if (a2.length() > 0 && a2.charAt(i3 - 1) == 10) {
                z = true;
            }
            this.f12071b = z;
            this.f12070a.append(a2, i2, i3);
            return this;
        }
    }

    public GlideException(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    public void a(c cVar, DataSource dataSource2) {
        a(cVar, dataSource2, null);
    }

    public List<Throwable> b() {
        ArrayList arrayList = new ArrayList();
        a((Throwable) this, (List<Throwable>) arrayList);
        return arrayList;
    }

    public Throwable fillInStackTrace() {
        return this;
    }

    public String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        String str3 = "";
        if (this.dataClass != null) {
            str = ", " + this.dataClass;
        } else {
            str = str3;
        }
        sb.append(str);
        if (this.dataSource != null) {
            str2 = ", " + this.dataSource;
        } else {
            str2 = str3;
        }
        sb.append(str2);
        if (this.key != null) {
            str3 = ", " + this.key;
        }
        sb.append(str3);
        List<Throwable> b2 = b();
        if (b2.isEmpty()) {
            return sb.toString();
        }
        if (b2.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(b2.size());
            sb.append(" causes:");
        }
        for (Throwable next : b2) {
            sb.append(10);
            sb.append(next.getClass().getName());
            sb.append('(');
            sb.append(next.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public GlideException(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    public void a(c cVar, DataSource dataSource2, Class<?> cls) {
        this.key = cVar;
        this.dataSource = dataSource2;
        this.dataClass = cls;
    }

    public void printStackTrace(PrintStream printStream) {
        a((Appendable) printStream);
    }

    public GlideException(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(f12069a);
        this.causes = list;
    }

    public static void b(List<Throwable> list, Appendable appendable) {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            appendable.append("Cause (").append(String.valueOf(i3)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i2);
            if (th instanceof GlideException) {
                ((GlideException) th).a(appendable);
            } else {
                a(th, appendable);
            }
            i2 = i3;
        }
    }

    public void printStackTrace(PrintWriter printWriter) {
        a((Appendable) printWriter);
    }

    public List<Throwable> a() {
        return this.causes;
    }

    public void a(String str) {
        List<Throwable> b2 = b();
        int size = b2.size();
        int i2 = 0;
        while (i2 < size) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root cause (");
            int i3 = i2 + 1;
            sb.append(i3);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), b2.get(i2));
            i2 = i3;
        }
    }

    public final void a(Throwable th, List<Throwable> list) {
        if (th instanceof GlideException) {
            for (Throwable a2 : ((GlideException) th).a()) {
                a(a2, list);
            }
            return;
        }
        list.add(th);
    }

    public final void a(Appendable appendable) {
        a((Throwable) this, appendable);
        a(a(), (Appendable) new a(appendable));
    }

    public static void a(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append(10);
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public static void a(List<Throwable> list, Appendable appendable) {
        try {
            b(list, appendable);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
