package com.facebook.b;

import android.content.Context;
import com.facebook.b.o;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public final class e extends o {

    final class a extends o.e {

        /* renamed from: a  reason: collision with root package name */
        final b[] f2429a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f2430b;

        /* renamed from: com.facebook.b.e$a$a  reason: collision with other inner class name */
        final class C0050a extends o.d {

            /* renamed from: b  reason: collision with root package name */
            private int f2432b;

            private C0050a() {
            }

            /* synthetic */ C0050a(a aVar, byte b2) {
                this();
            }

            public final boolean hasNext() {
                return this.f2432b < a.this.f2429a.length;
            }

            public final o.c next() throws IOException {
                b[] bVarArr = a.this.f2429a;
                int i = this.f2432b;
                this.f2432b = i + 1;
                b bVar = bVarArr[i];
                FileInputStream fileInputStream = new FileInputStream(bVar.f2433a);
                try {
                    return new o.c(bVar, fileInputStream);
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(6:34|35|36|37|38|39) */
        /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
            r8.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x00dc, code lost:
            r10.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:34:0x00e2, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:35:0x00e3, code lost:
            r2 = r0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
            r8.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
            throw r2;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:38:0x00e7 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        a(com.facebook.b.e r18, com.facebook.b.o r19) throws java.io.IOException {
            /*
                r17 = this;
                r1 = r17
                r0 = r18
                r1.f2430b = r0
                r17.<init>()
                android.content.Context r0 = r0.f
                java.io.File r2 = new java.io.File
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                java.lang.String r4 = "/data/local/tmp/exopackage/"
                r3.<init>(r4)
                java.lang.String r0 = r0.getPackageName()
                r3.append(r0)
                java.lang.String r0 = "/native-libs/"
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                r2.<init>(r0)
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                java.util.LinkedHashSet r3 = new java.util.LinkedHashSet
                r3.<init>()
                java.lang.String[] r4 = com.facebook.b.m.getSupportedAbis()
                int r5 = r4.length
                r6 = 0
                r7 = 0
            L_0x0038:
                if (r7 >= r5) goto L_0x00f5
                r8 = r4[r7]
                java.io.File r9 = new java.io.File
                r9.<init>(r2, r8)
                boolean r10 = r9.isDirectory()
                if (r10 == 0) goto L_0x00f0
                r3.add(r8)
                java.io.File r8 = new java.io.File
                java.lang.String r10 = "metadata.txt"
                r8.<init>(r9, r10)
                boolean r10 = r8.isFile()
                if (r10 == 0) goto L_0x00f0
                java.io.FileReader r10 = new java.io.FileReader
                r10.<init>(r8)
                java.io.BufferedReader r8 = new java.io.BufferedReader     // Catch:{ all -> 0x00e8 }
                r8.<init>(r10)     // Catch:{ all -> 0x00e8 }
            L_0x0061:
                java.lang.String r11 = r8.readLine()     // Catch:{ all -> 0x00e0 }
                if (r11 == 0) goto L_0x00d9
                int r12 = r11.length()     // Catch:{ all -> 0x00e0 }
                if (r12 == 0) goto L_0x0061
                r12 = 32
                int r12 = r11.indexOf(r12)     // Catch:{ all -> 0x00e0 }
                r13 = -1
                if (r12 == r13) goto L_0x00c0
                java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e0 }
                r13.<init>()     // Catch:{ all -> 0x00e0 }
                java.lang.String r14 = r11.substring(r6, r12)     // Catch:{ all -> 0x00e0 }
                r13.append(r14)     // Catch:{ all -> 0x00e0 }
                java.lang.String r14 = ".so"
                r13.append(r14)     // Catch:{ all -> 0x00e0 }
                java.lang.String r13 = r13.toString()     // Catch:{ all -> 0x00e0 }
                int r14 = r0.size()     // Catch:{ all -> 0x00e0 }
                r15 = 0
            L_0x0090:
                if (r15 >= r14) goto L_0x00a8
                java.lang.Object r16 = r0.get(r15)     // Catch:{ all -> 0x00e0 }
                r6 = r16
                com.facebook.b.e$b r6 = (com.facebook.b.e.b) r6     // Catch:{ all -> 0x00e0 }
                java.lang.String r6 = r6.name     // Catch:{ all -> 0x00e0 }
                boolean r6 = r6.equals(r13)     // Catch:{ all -> 0x00e0 }
                if (r6 == 0) goto L_0x00a4
                r6 = 1
                goto L_0x00a9
            L_0x00a4:
                int r15 = r15 + 1
                r6 = 0
                goto L_0x0090
            L_0x00a8:
                r6 = 0
            L_0x00a9:
                if (r6 != 0) goto L_0x00be
                int r12 = r12 + 1
                java.lang.String r6 = r11.substring(r12)     // Catch:{ all -> 0x00e0 }
                com.facebook.b.e$b r11 = new com.facebook.b.e$b     // Catch:{ all -> 0x00e0 }
                java.io.File r12 = new java.io.File     // Catch:{ all -> 0x00e0 }
                r12.<init>(r9, r6)     // Catch:{ all -> 0x00e0 }
                r11.<init>(r13, r6, r12)     // Catch:{ all -> 0x00e0 }
                r0.add(r11)     // Catch:{ all -> 0x00e0 }
            L_0x00be:
                r6 = 0
                goto L_0x0061
            L_0x00c0:
                java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch:{ all -> 0x00e0 }
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e0 }
                java.lang.String r3 = "illegal line in exopackage metadata: ["
                r2.<init>(r3)     // Catch:{ all -> 0x00e0 }
                r2.append(r11)     // Catch:{ all -> 0x00e0 }
                java.lang.String r3 = "]"
                r2.append(r3)     // Catch:{ all -> 0x00e0 }
                java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x00e0 }
                r0.<init>(r2)     // Catch:{ all -> 0x00e0 }
                throw r0     // Catch:{ all -> 0x00e0 }
            L_0x00d9:
                r8.close()     // Catch:{ all -> 0x00e8 }
                r10.close()
                goto L_0x00f0
            L_0x00e0:
                r0 = move-exception
                throw r0     // Catch:{ all -> 0x00e2 }
            L_0x00e2:
                r0 = move-exception
                r2 = r0
                r8.close()     // Catch:{ all -> 0x00e7 }
            L_0x00e7:
                throw r2     // Catch:{ all -> 0x00e8 }
            L_0x00e8:
                r0 = move-exception
                throw r0     // Catch:{ all -> 0x00ea }
            L_0x00ea:
                r0 = move-exception
                r2 = r0
                r10.close()     // Catch:{ all -> 0x00ef }
            L_0x00ef:
                throw r2
            L_0x00f0:
                int r7 = r7 + 1
                r6 = 0
                goto L_0x0038
            L_0x00f5:
                int r2 = r3.size()
                java.lang.String[] r2 = new java.lang.String[r2]
                java.lang.Object[] r2 = r3.toArray(r2)
                java.lang.String[] r2 = (java.lang.String[]) r2
                r3 = r19
                r3.setSoSourceAbis(r2)
                int r2 = r0.size()
                com.facebook.b.e$b[] r2 = new com.facebook.b.e.b[r2]
                java.lang.Object[] r0 = r0.toArray(r2)
                com.facebook.b.e$b[] r0 = (com.facebook.b.e.b[]) r0
                r1.f2429a = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.e.a.<init>(com.facebook.b.e, com.facebook.b.o):void");
        }

        /* access modifiers changed from: protected */
        public final o.b a() throws IOException {
            return new o.b(this.f2429a);
        }

        /* access modifiers changed from: protected */
        public final o.d b() throws IOException {
            return new C0050a(this, (byte) 0);
        }
    }

    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        final File f2433a;

        b(String str, String str2, File file) {
            super(str, str2);
            this.f2433a = file;
        }
    }

    public e(Context context, String str) {
        super(context, str);
    }

    /* access modifiers changed from: protected */
    public final o.e a() throws IOException {
        return new a(this, this);
    }
}
