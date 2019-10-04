package com.getkeepsafe.a;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.a.a.f;
import com.getkeepsafe.a.c;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    protected final Set<String> f2481a;

    /* renamed from: b  reason: collision with root package name */
    protected final c.b f2482b;
    protected final c.a c;
    protected boolean d;
    protected boolean e;
    protected c.d f;

    protected d() {
        this(new e(), new a());
    }

    private d(c.b bVar, c.a aVar) {
        this.f2481a = new HashSet();
        this.f2482b = bVar;
        this.c = aVar;
    }

    public final d log(c.d dVar) {
        this.f = dVar;
        return this;
    }

    public final d force() {
        this.d = true;
        return this;
    }

    public final d recursively() {
        this.e = true;
        return this;
    }

    public final void loadLibrary(Context context, String str) {
        loadLibrary(context, str, null, null);
    }

    public final void loadLibrary(Context context, String str, String str2) {
        loadLibrary(context, str, str2, null);
    }

    public final void loadLibrary(Context context, String str, c.C0053c cVar) {
        loadLibrary(context, str, null, cVar);
    }

    public final void loadLibrary(Context context, String str, String str2, c.C0053c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        } else if (!f.isEmpty(str)) {
            log("Beginning load of %s...", str);
            if (cVar == null) {
                a(context, str, str2);
                return;
            }
            final Context context2 = context;
            final String str3 = str;
            final String str4 = str2;
            final c.C0053c cVar2 = cVar;
            AnonymousClass1 r1 = new Runnable() {
                public final void run() {
                    try {
                        d.this.a(context2, str3, str4);
                        cVar2.success();
                    } catch (UnsatisfiedLinkError e2) {
                        cVar2.failure(e2);
                    } catch (b e3) {
                        cVar2.failure(e3);
                    }
                }
            };
            new Thread(r1).start();
        } else {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
    }

    /* access modifiers changed from: private */
    public void a(Context context, String str, String str2) {
        f fVar;
        f fVar2;
        if (!this.f2481a.contains(str) || this.d) {
            try {
                this.f2482b.loadLibrary(str);
                this.f2481a.add(str);
                log("%s (%s) was loaded normally!", str, str2);
            } catch (UnsatisfiedLinkError e2) {
                log("Loading the library normally failed: %s", Log.getStackTraceString(e2));
                log("%s (%s) was not loaded normally, re-linking...", str, str2);
                File b2 = b(context, str, str2);
                if (!b2.exists() || this.d) {
                    if (this.d) {
                        log("Forcing a re-link of %s (%s)...", str, str2);
                    }
                    File dir = context.getDir("lib", 0);
                    File b3 = b(context, str, str2);
                    final String mapLibraryName = this.f2482b.mapLibraryName(str);
                    File[] listFiles = dir.listFiles(new FilenameFilter() {
                        public final boolean accept(File file, String str) {
                            return str.startsWith(mapLibraryName);
                        }
                    });
                    if (listFiles != null) {
                        for (File file : listFiles) {
                            if (this.d || !file.getAbsolutePath().equals(b3.getAbsolutePath())) {
                                file.delete();
                            }
                        }
                    }
                    this.c.installLibrary(context, this.f2482b.supportedAbis(), this.f2482b.mapLibraryName(str), b2, this);
                }
                try {
                    if (this.e) {
                        fVar = null;
                        fVar2 = new f(b2);
                        List<String> parseNeededDependencies = fVar2.parseNeededDependencies();
                        fVar2.close();
                        for (String unmapLibraryName : parseNeededDependencies) {
                            loadLibrary(context, this.f2482b.unmapLibraryName(unmapLibraryName));
                        }
                    }
                } catch (IOException unused) {
                }
                this.f2482b.loadPath(b2.getAbsolutePath());
                this.f2481a.add(str);
                log("%s (%s) was re-linked!", str, str2);
            } catch (Throwable th) {
                th = th;
                fVar = fVar2;
                fVar.close();
                throw th;
            }
        } else {
            log("%s already loaded previously!", str);
        }
    }

    private File b(Context context, String str, String str2) {
        String mapLibraryName = this.f2482b.mapLibraryName(str);
        if (f.isEmpty(str2)) {
            return new File(context.getDir("lib", 0), mapLibraryName);
        }
        File dir = context.getDir("lib", 0);
        return new File(dir, mapLibraryName + "." + str2);
    }

    public final void log(String str, Object... objArr) {
        log(String.format(Locale.US, str, objArr));
    }

    public final void log(String str) {
        c.d dVar = this.f;
        if (dVar != null) {
            dVar.log(str);
        }
    }
}
