package h.e;

import h.a.C1086c;
import h.f.b.f;
import h.f.b.j;
import h.h;
import h.i;
import h.j.d;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.io.AccessDeniedException;
import kotlin.io.FileWalkDirection;

/* compiled from: FileTreeWalk.kt */
public final class c implements d<File> {

    /* renamed from: a  reason: collision with root package name */
    public final File f14541a;

    /* renamed from: b  reason: collision with root package name */
    public final FileWalkDirection f14542b;

    /* renamed from: c  reason: collision with root package name */
    public final h.f.a.b<File, Boolean> f14543c;

    /* renamed from: d  reason: collision with root package name */
    public final h.f.a.b<File, h> f14544d;

    /* renamed from: e  reason: collision with root package name */
    public final h.f.a.c<File, IOException, h> f14545e;

    /* renamed from: f  reason: collision with root package name */
    public final int f14546f;

    /* compiled from: FileTreeWalk.kt */
    private static abstract class a extends C0146c {
        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(File file) {
            super(file);
            j.b(file, "rootDir");
            if (i.f14590a) {
                boolean isDirectory = file.isDirectory();
                if (i.f14590a && !isDirectory) {
                    throw new AssertionError("rootDir must be verified to be directory beforehand.");
                }
            }
        }
    }

    /* compiled from: FileTreeWalk.kt */
    private final class b extends C1086c<File> {

        /* renamed from: c  reason: collision with root package name */
        public final ArrayDeque<C0146c> f14547c = new ArrayDeque<>();

        /* compiled from: FileTreeWalk.kt */
        private final class a extends a {

            /* renamed from: b  reason: collision with root package name */
            public boolean f14549b;

            /* renamed from: c  reason: collision with root package name */
            public File[] f14550c;

            /* renamed from: d  reason: collision with root package name */
            public int f14551d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f14552e;

            /* renamed from: f  reason: collision with root package name */
            public final /* synthetic */ b f14553f;

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            public a(b bVar, File file) {
                super(file);
                j.b(file, "rootDir");
                this.f14553f = bVar;
            }

            public File b() {
                if (!this.f14552e && this.f14550c == null) {
                    h.f.a.b c2 = c.this.f14543c;
                    if (c2 != null && !((Boolean) c2.a(a())).booleanValue()) {
                        return null;
                    }
                    this.f14550c = a().listFiles();
                    if (this.f14550c == null) {
                        h.f.a.c d2 = c.this.f14545e;
                        if (d2 != null) {
                            File a2 = a();
                            AccessDeniedException accessDeniedException = new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null);
                            h hVar = (h) d2.b(a2, accessDeniedException);
                        }
                        this.f14552e = true;
                    }
                }
                File[] fileArr = this.f14550c;
                if (fileArr != null) {
                    int i2 = this.f14551d;
                    if (fileArr == null) {
                        j.a();
                        throw null;
                    } else if (i2 < fileArr.length) {
                        if (fileArr != null) {
                            this.f14551d = i2 + 1;
                            return fileArr[i2];
                        }
                        j.a();
                        throw null;
                    }
                }
                if (!this.f14549b) {
                    this.f14549b = true;
                    return a();
                }
                h.f.a.b e2 = c.this.f14544d;
                if (e2 != null) {
                    h hVar2 = (h) e2.a(a());
                }
                return null;
            }
        }

        /* renamed from: h.e.c$b$b  reason: collision with other inner class name */
        /* compiled from: FileTreeWalk.kt */
        private final class C0144b extends C0146c {

            /* renamed from: b  reason: collision with root package name */
            public boolean f14554b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ b f14555c;

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            public C0144b(b bVar, File file) {
                super(file);
                j.b(file, "rootFile");
                this.f14555c = bVar;
                if (i.f14590a) {
                    boolean isFile = file.isFile();
                    if (i.f14590a && !isFile) {
                        throw new AssertionError("rootFile must be verified to be file beforehand.");
                    }
                }
            }

            public File b() {
                if (this.f14554b) {
                    return null;
                }
                this.f14554b = true;
                return a();
            }
        }

        /* renamed from: h.e.c$b$c  reason: collision with other inner class name */
        /* compiled from: FileTreeWalk.kt */
        private final class C0145c extends a {

            /* renamed from: b  reason: collision with root package name */
            public boolean f14556b;

            /* renamed from: c  reason: collision with root package name */
            public File[] f14557c;

            /* renamed from: d  reason: collision with root package name */
            public int f14558d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ b f14559e;

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            public C0145c(b bVar, File file) {
                super(file);
                j.b(file, "rootDir");
                this.f14559e = bVar;
            }

            /* JADX WARNING: Code restructure failed: missing block: B:32:0x0089, code lost:
                if (r0.length == 0) goto L_0x0090;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public java.io.File b() {
                /*
                    r10 = this;
                    boolean r0 = r10.f14556b
                    r1 = 0
                    if (r0 != 0) goto L_0x0028
                    h.e.c$b r0 = r10.f14559e
                    h.e.c r0 = h.e.c.this
                    h.f.a.b r0 = r0.f14543c
                    if (r0 == 0) goto L_0x0020
                    java.io.File r2 = r10.a()
                    java.lang.Object r0 = r0.a(r2)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L_0x0020
                    return r1
                L_0x0020:
                    r0 = 1
                    r10.f14556b = r0
                    java.io.File r0 = r10.a()
                    return r0
                L_0x0028:
                    java.io.File[] r0 = r10.f14557c
                    if (r0 == 0) goto L_0x004d
                    int r2 = r10.f14558d
                    if (r0 == 0) goto L_0x0049
                    int r0 = r0.length
                    if (r2 >= r0) goto L_0x0034
                    goto L_0x004d
                L_0x0034:
                    h.e.c$b r0 = r10.f14559e
                    h.e.c r0 = h.e.c.this
                    h.f.a.b r0 = r0.f14544d
                    if (r0 == 0) goto L_0x0048
                    java.io.File r2 = r10.a()
                    java.lang.Object r0 = r0.a(r2)
                    h.h r0 = (h.h) r0
                L_0x0048:
                    return r1
                L_0x0049:
                    h.f.b.j.a()
                    throw r1
                L_0x004d:
                    java.io.File[] r0 = r10.f14557c
                    if (r0 != 0) goto L_0x00a5
                    java.io.File r0 = r10.a()
                    java.io.File[] r0 = r0.listFiles()
                    r10.f14557c = r0
                    java.io.File[] r0 = r10.f14557c
                    if (r0 != 0) goto L_0x0082
                    h.e.c$b r0 = r10.f14559e
                    h.e.c r0 = h.e.c.this
                    h.f.a.c r0 = r0.f14545e
                    if (r0 == 0) goto L_0x0082
                    java.io.File r2 = r10.a()
                    kotlin.io.AccessDeniedException r9 = new kotlin.io.AccessDeniedException
                    java.io.File r4 = r10.a()
                    r5 = 0
                    r7 = 2
                    r8 = 0
                    java.lang.String r6 = "Cannot list files in a directory"
                    r3 = r9
                    r3.<init>(r4, r5, r6, r7, r8)
                    java.lang.Object r0 = r0.b(r2, r9)
                    h.h r0 = (h.h) r0
                L_0x0082:
                    java.io.File[] r0 = r10.f14557c
                    if (r0 == 0) goto L_0x0090
                    if (r0 == 0) goto L_0x008c
                    int r0 = r0.length
                    if (r0 != 0) goto L_0x00a5
                    goto L_0x0090
                L_0x008c:
                    h.f.b.j.a()
                    throw r1
                L_0x0090:
                    h.e.c$b r0 = r10.f14559e
                    h.e.c r0 = h.e.c.this
                    h.f.a.b r0 = r0.f14544d
                    if (r0 == 0) goto L_0x00a4
                    java.io.File r2 = r10.a()
                    java.lang.Object r0 = r0.a(r2)
                    h.h r0 = (h.h) r0
                L_0x00a4:
                    return r1
                L_0x00a5:
                    java.io.File[] r0 = r10.f14557c
                    if (r0 == 0) goto L_0x00b2
                    int r1 = r10.f14558d
                    int r2 = r1 + 1
                    r10.f14558d = r2
                    r0 = r0[r1]
                    return r0
                L_0x00b2:
                    h.f.b.j.a()
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: h.e.c.b.C0145c.b():java.io.File");
            }
        }

        public b() {
            if (c.this.f14541a.isDirectory()) {
                this.f14547c.push(a(c.this.f14541a));
            } else if (c.this.f14541a.isFile()) {
                this.f14547c.push(new C0144b(this, c.this.f14541a));
            } else {
                b();
            }
        }

        public void a() {
            File d2 = d();
            if (d2 != null) {
                b(d2);
            } else {
                b();
            }
        }

        public final File d() {
            File b2;
            while (true) {
                C0146c peek = this.f14547c.peek();
                if (peek == null) {
                    return null;
                }
                b2 = peek.b();
                if (b2 == null) {
                    this.f14547c.pop();
                } else if (j.a((Object) b2, (Object) peek.a()) || !b2.isDirectory() || this.f14547c.size() >= c.this.f14546f) {
                    return b2;
                } else {
                    this.f14547c.push(a(b2));
                }
            }
            return b2;
        }

        public final a a(File file) {
            int i2 = d.f14561a[c.this.f14542b.ordinal()];
            if (i2 == 1) {
                return new C0145c(this, file);
            }
            if (i2 == 2) {
                return new a(this, file);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: h.e.c$c  reason: collision with other inner class name */
    /* compiled from: FileTreeWalk.kt */
    private static abstract class C0146c {

        /* renamed from: a  reason: collision with root package name */
        public final File f14560a;

        public C0146c(File file) {
            j.b(file, "root");
            this.f14560a = file;
        }

        public final File a() {
            return this.f14560a;
        }

        public abstract File b();
    }

    public c(File file, FileWalkDirection fileWalkDirection, h.f.a.b<? super File, Boolean> bVar, h.f.a.b<? super File, h> bVar2, h.f.a.c<? super File, ? super IOException, h> cVar, int i2) {
        this.f14541a = file;
        this.f14542b = fileWalkDirection;
        this.f14543c = bVar;
        this.f14544d = bVar2;
        this.f14545e = cVar;
        this.f14546f = i2;
    }

    public Iterator<File> iterator() {
        return new b();
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(File file, FileWalkDirection fileWalkDirection, h.f.a.b bVar, h.f.a.b bVar2, h.f.a.c cVar, int i2, int i3, f fVar) {
        this(file, (i3 & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection, bVar, bVar2, cVar, (i3 & 32) != 0 ? Integer.MAX_VALUE : i2);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public c(File file, FileWalkDirection fileWalkDirection) {
        this(file, fileWalkDirection, null, null, null, 0, 32, null);
        j.b(file, "start");
        j.b(fileWalkDirection, "direction");
    }
}
