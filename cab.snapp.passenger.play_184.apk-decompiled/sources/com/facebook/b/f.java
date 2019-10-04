package com.facebook.b;

import android.content.Context;
import com.facebook.b.o;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.annotation.Nullable;

public class f extends o {
    protected final File d;
    protected final String e;

    static final class a extends o.a implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        final ZipEntry f2434a;

        /* renamed from: b  reason: collision with root package name */
        final int f2435b;

        public final int compareTo(Object obj) {
            return this.name.compareTo(((a) obj).name);
        }

        a(String str, ZipEntry zipEntry, int i) {
            super(str, String.format("pseudo-zip-hash-1-%s-%s-%s-%s", new Object[]{zipEntry.getName(), Long.valueOf(zipEntry.getSize()), Long.valueOf(zipEntry.getCompressedSize()), Long.valueOf(zipEntry.getCrc())}));
            this.f2434a = zipEntry;
            this.f2435b = i;
        }
    }

    protected class b extends o.e {

        /* renamed from: a  reason: collision with root package name */
        private final o f2436a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        a[] f2437b;
        final ZipFile c;

        final class a extends o.d {

            /* renamed from: b  reason: collision with root package name */
            private int f2439b;

            private a() {
            }

            /* synthetic */ a(b bVar, byte b2) {
                this();
            }

            public final boolean hasNext() {
                b.this.c();
                return this.f2439b < b.this.f2437b.length;
            }

            public final o.c next() throws IOException {
                b.this.c();
                a[] aVarArr = b.this.f2437b;
                int i = this.f2439b;
                this.f2439b = i + 1;
                a aVar = aVarArr[i];
                InputStream inputStream = b.this.c.getInputStream(aVar.f2434a);
                try {
                    return new o.c(aVar, inputStream);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean a(ZipEntry zipEntry, String str) {
            return true;
        }

        b(o oVar) throws IOException {
            this.c = new ZipFile(f.this.d);
            this.f2436a = oVar;
        }

        /* access modifiers changed from: package-private */
        public final a[] c() {
            if (this.f2437b == null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashMap hashMap = new HashMap();
                Pattern compile = Pattern.compile(f.this.e);
                String[] supportedAbis = m.getSupportedAbis();
                Enumeration<? extends ZipEntry> entries = this.c.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                    Matcher matcher = compile.matcher(zipEntry.getName());
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        String group2 = matcher.group(2);
                        int findAbiScore = m.findAbiScore(supportedAbis, group);
                        if (findAbiScore >= 0) {
                            linkedHashSet.add(group);
                            a aVar = (a) hashMap.get(group2);
                            if (aVar == null || findAbiScore < aVar.f2435b) {
                                hashMap.put(group2, new a(group2, zipEntry, findAbiScore));
                            }
                        }
                    }
                }
                this.f2436a.setSoSourceAbis((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
                a[] aVarArr = (a[]) hashMap.values().toArray(new a[hashMap.size()]);
                Arrays.sort(aVarArr);
                int i = 0;
                for (int i2 = 0; i2 < aVarArr.length; i2++) {
                    a aVar2 = aVarArr[i2];
                    if (a(aVar2.f2434a, aVar2.name)) {
                        i++;
                    } else {
                        aVarArr[i2] = null;
                    }
                }
                a[] aVarArr2 = new a[i];
                int i3 = 0;
                for (a aVar3 : aVarArr) {
                    if (aVar3 != null) {
                        aVarArr2[i3] = aVar3;
                        i3++;
                    }
                }
                this.f2437b = aVarArr2;
            }
            return this.f2437b;
        }

        public void close() throws IOException {
            this.c.close();
        }

        /* access modifiers changed from: protected */
        public final o.b a() throws IOException {
            return new o.b(c());
        }

        /* access modifiers changed from: protected */
        public final o.d b() throws IOException {
            return new a(this, (byte) 0);
        }
    }

    public f(Context context, String str, File file, String str2) {
        super(context, str);
        this.d = file;
        this.e = str2;
    }

    /* access modifiers changed from: protected */
    public o.e a() throws IOException {
        return new b(this);
    }
}
