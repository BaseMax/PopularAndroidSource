package com.a.a.c;

import com.a.a.c.a.a.f;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;

final class aa {

    /* renamed from: a  reason: collision with root package name */
    private static final com.a.a.c.a.a.e f1707a = new com.a.a.c.a.a.e("", "", 0);
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final j[] f1708b = new j[0];
    private static final m[] c = new m[0];
    private static final g[] d = new g[0];
    private static final b[] e = new b[0];
    private static final c[] f = new c[0];

    static final class a extends j {
        public a(f fVar, k kVar) {
            super(3, fVar, kVar);
        }
    }

    static final class b extends j {

        /* renamed from: a  reason: collision with root package name */
        private final long f1709a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1710b;
        private final String c;
        private final String d;

        public b(com.a.a.c.a.a.a aVar) {
            super(4, new j[0]);
            this.f1709a = aVar.baseAddress;
            this.f1710b = aVar.size;
            this.c = aVar.path;
            this.d = aVar.id;
        }

        public final int getPropertiesSize() {
            int computeUInt64Size = e.computeUInt64Size(1, this.f1709a);
            return e.computeBytesSize(3, b.copyFromUtf8(this.c)) + computeUInt64Size + e.computeUInt64Size(2, this.f1710b) + e.computeBytesSize(4, b.copyFromUtf8(this.d));
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeUInt64(1, this.f1709a);
            eVar.writeUInt64(2, this.f1710b);
            eVar.writeBytes(3, b.copyFromUtf8(this.c));
            eVar.writeBytes(4, b.copyFromUtf8(this.d));
        }
    }

    static final class c extends j {

        /* renamed from: a  reason: collision with root package name */
        private final String f1711a;

        /* renamed from: b  reason: collision with root package name */
        private final String f1712b;

        public c(com.a.a.c.a.a.b bVar) {
            super(2, new j[0]);
            this.f1711a = bVar.key;
            this.f1712b = bVar.value;
        }

        public final int getPropertiesSize() {
            int computeBytesSize = e.computeBytesSize(1, b.copyFromUtf8(this.f1711a));
            String str = this.f1712b;
            if (str == null) {
                str = "";
            }
            return computeBytesSize + e.computeBytesSize(2, b.copyFromUtf8(str));
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeBytes(1, b.copyFromUtf8(this.f1711a));
            String str = this.f1712b;
            if (str == null) {
                str = "";
            }
            eVar.writeBytes(2, b.copyFromUtf8(str));
        }
    }

    static final class d extends j {

        /* renamed from: a  reason: collision with root package name */
        private final float f1713a;

        /* renamed from: b  reason: collision with root package name */
        private final int f1714b;
        private final boolean c;
        private final int d;
        private final long e;
        private final long f;

        public d(float f2, int i, boolean z, int i2, long j, long j2) {
            super(5, new j[0]);
            this.f1713a = f2;
            this.f1714b = i;
            this.c = z;
            this.d = i2;
            this.e = j;
            this.f = j2;
        }

        public final int getPropertiesSize() {
            return e.computeFloatSize(1, this.f1713a) + 0 + e.computeSInt32Size(2, this.f1714b) + e.computeBoolSize(3, this.c) + e.computeUInt32Size(4, this.d) + e.computeUInt64Size(5, this.e) + e.computeUInt64Size(6, this.f);
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeFloat(1, this.f1713a);
            eVar.writeSInt32(2, this.f1714b);
            eVar.writeBool(3, this.c);
            eVar.writeUInt32(4, this.d);
            eVar.writeUInt64(5, this.e);
            eVar.writeUInt64(6, this.f);
        }
    }

    static final class e extends j {

        /* renamed from: a  reason: collision with root package name */
        private final long f1715a;

        /* renamed from: b  reason: collision with root package name */
        private final String f1716b;

        public e(long j, String str, j... jVarArr) {
            super(10, jVarArr);
            this.f1715a = j;
            this.f1716b = str;
        }

        public final int getPropertiesSize() {
            return e.computeUInt64Size(1, this.f1715a) + e.computeBytesSize(2, b.copyFromUtf8(this.f1716b));
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeUInt64(1, this.f1715a);
            eVar.writeBytes(2, b.copyFromUtf8(this.f1716b));
        }
    }

    static final class f extends j {
        public f(l lVar, k kVar, k kVar2) {
            super(1, kVar, lVar, kVar2);
        }
    }

    static final class g extends j {

        /* renamed from: a  reason: collision with root package name */
        private final long f1717a;

        /* renamed from: b  reason: collision with root package name */
        private final String f1718b;
        private final String c;
        private final long d;
        private final int e;

        public g(f.a aVar) {
            super(3, new j[0]);
            this.f1717a = aVar.address;
            this.f1718b = aVar.symbol;
            this.c = aVar.file;
            this.d = aVar.offset;
            this.e = aVar.importance;
        }

        public final int getPropertiesSize() {
            return e.computeUInt64Size(1, this.f1717a) + e.computeBytesSize(2, b.copyFromUtf8(this.f1718b)) + e.computeBytesSize(3, b.copyFromUtf8(this.c)) + e.computeUInt64Size(4, this.d) + e.computeUInt32Size(5, this.e);
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeUInt64(1, this.f1717a);
            eVar.writeBytes(2, b.copyFromUtf8(this.f1718b));
            eVar.writeBytes(3, b.copyFromUtf8(this.c));
            eVar.writeUInt64(4, this.d);
            eVar.writeUInt32(5, this.e);
        }
    }

    static final class h extends j {

        /* renamed from: a  reason: collision with root package name */
        b f1719a;

        public h(b bVar) {
            super(6, new j[0]);
            this.f1719a = bVar;
        }

        public final int getPropertiesSize() {
            return e.computeBytesSize(1, this.f1719a);
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeBytes(1, this.f1719a);
        }
    }

    static final class i extends j {
        public final int getSize() {
            return 0;
        }

        public final void write(e eVar) throws IOException {
        }

        public i() {
            super(0, new j[0]);
        }
    }

    static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        private final int f1720a;

        /* renamed from: b  reason: collision with root package name */
        private final j[] f1721b;

        public int getPropertiesSize() {
            return 0;
        }

        public void writeProperties(e eVar) throws IOException {
        }

        public j(int i, j... jVarArr) {
            this.f1720a = i;
            this.f1721b = jVarArr == null ? aa.f1708b : jVarArr;
        }

        public int getSize() {
            int sizeNoTag = getSizeNoTag();
            return sizeNoTag + e.computeRawVarint32Size(sizeNoTag) + e.computeTagSize(this.f1720a);
        }

        public int getSizeNoTag() {
            int propertiesSize = getPropertiesSize();
            for (j size : this.f1721b) {
                propertiesSize += size.getSize();
            }
            return propertiesSize;
        }

        public void write(e eVar) throws IOException {
            eVar.writeTag(this.f1720a, 2);
            eVar.writeRawVarint32(getSizeNoTag());
            writeProperties(eVar);
            for (j write : this.f1721b) {
                write.write(eVar);
            }
        }
    }

    static final class k extends j {

        /* renamed from: a  reason: collision with root package name */
        private final j[] f1722a;

        public k(j... jVarArr) {
            super(0, new j[0]);
            this.f1722a = jVarArr;
        }

        public final void write(e eVar) throws IOException {
            for (j write : this.f1722a) {
                write.write(eVar);
            }
        }

        public final int getSize() {
            int i = 0;
            for (j size : this.f1722a) {
                i += size.getSize();
            }
            return i;
        }
    }

    static final class l extends j {

        /* renamed from: a  reason: collision with root package name */
        private final String f1723a;

        /* renamed from: b  reason: collision with root package name */
        private final String f1724b;
        private final long c;

        public l(com.a.a.c.a.a.e eVar) {
            super(3, new j[0]);
            this.f1723a = eVar.name;
            this.f1724b = eVar.code;
            this.c = eVar.faultAddress;
        }

        public final int getPropertiesSize() {
            return e.computeBytesSize(1, b.copyFromUtf8(this.f1723a)) + e.computeBytesSize(2, b.copyFromUtf8(this.f1724b)) + e.computeUInt64Size(3, this.c);
        }

        public final void writeProperties(e eVar) throws IOException {
            eVar.writeBytes(1, b.copyFromUtf8(this.f1723a));
            eVar.writeBytes(2, b.copyFromUtf8(this.f1724b));
            eVar.writeUInt64(3, this.c);
        }
    }

    static final class m extends j {

        /* renamed from: a  reason: collision with root package name */
        private final String f1725a;

        /* renamed from: b  reason: collision with root package name */
        private final int f1726b;

        public m(com.a.a.c.a.a.f fVar, k kVar) {
            super(1, kVar);
            this.f1725a = fVar.name;
            this.f1726b = fVar.importance;
        }

        public final int getPropertiesSize() {
            return e.computeUInt32Size(2, this.f1726b) + (a() ? e.computeBytesSize(1, b.copyFromUtf8(this.f1725a)) : 0);
        }

        public final void writeProperties(e eVar) throws IOException {
            if (a()) {
                eVar.writeBytes(1, b.copyFromUtf8(this.f1725a));
            }
            eVar.writeUInt32(2, this.f1726b);
        }

        private boolean a() {
            String str = this.f1725a;
            return str != null && str.length() > 0;
        }
    }

    aa() {
    }

    private static k a(f.a[] aVarArr) {
        g[] gVarArr = aVarArr != null ? new g[aVarArr.length] : d;
        for (int i2 = 0; i2 < gVarArr.length; i2++) {
            gVarArr[i2] = new g(aVarArr[i2]);
        }
        return new k(gVarArr);
    }

    private static k a(com.a.a.c.a.a.b[] bVarArr) {
        c[] cVarArr = new c[bVarArr.length];
        for (int i2 = 0; i2 < cVarArr.length; i2++) {
            cVarArr[i2] = new c(bVarArr[i2]);
        }
        return new k(cVarArr);
    }

    public static void writeNativeCrash(com.a.a.c.a.a.d dVar, v vVar, Map<String, String> map, e eVar) throws IOException {
        j jVar;
        com.a.a.c.a.a.d dVar2 = dVar;
        l lVar = new l(dVar2.signal != null ? dVar2.signal : f1707a);
        com.a.a.c.a.a.f[] fVarArr = dVar2.threads;
        m[] mVarArr = fVarArr != null ? new m[fVarArr.length] : c;
        for (int i2 = 0; i2 < mVarArr.length; i2++) {
            com.a.a.c.a.a.f fVar = fVarArr[i2];
            mVarArr[i2] = new m(fVar, a(fVar.frames));
        }
        k kVar = new k(mVarArr);
        com.a.a.c.a.a.a[] aVarArr = dVar2.binaryImages;
        b[] bVarArr = aVarArr != null ? new b[aVarArr.length] : e;
        for (int i3 = 0; i3 < bVarArr.length; i3++) {
            bVarArr[i3] = new b(aVarArr[i3]);
        }
        f fVar2 = new f(lVar, kVar, new k(bVarArr));
        com.a.a.c.a.a.b[] bVarArr2 = dVar2.customAttributes;
        TreeMap treeMap = new TreeMap(map);
        if (bVarArr2 != null) {
            for (com.a.a.c.a.a.b bVar : bVarArr2) {
                treeMap.put(bVar.key, bVar.value);
            }
        }
        Map.Entry[] entryArr = (Map.Entry[]) treeMap.entrySet().toArray(new Map.Entry[treeMap.size()]);
        com.a.a.c.a.a.b[] bVarArr3 = new com.a.a.c.a.a.b[entryArr.length];
        for (int i4 = 0; i4 < bVarArr3.length; i4++) {
            bVarArr3[i4] = new com.a.a.c.a.a.b((String) entryArr[i4].getKey(), (String) entryArr[i4].getValue());
        }
        a aVar = new a(fVar2, a(bVarArr3));
        com.a.a.c.a.a.c cVar = dVar2.deviceData;
        if (cVar == null) {
            jVar = new i();
        } else {
            d dVar3 = new d(((float) cVar.batteryCapacity) / 100.0f, cVar.batteryVelocity, cVar.proximity, cVar.orientation, cVar.totalPhysicalMemory - cVar.availablePhysicalMemory, cVar.totalInternalStorage - cVar.availableInternalStorage);
            jVar = dVar3;
        }
        b a2 = vVar.a();
        if (a2 == null) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "No log data to include with this event.");
        }
        vVar.b();
        new e(dVar2.timestamp, "ndk-crash", aVar, jVar, a2 != null ? new h(a2) : new i()).write(eVar);
    }
}
