package com.yandex.metrica.impl.ob;

public class hq {
    public final long c;
    public final float d;
    public final int e;
    public final int f;
    public final long g;
    public final int h;
    public final boolean i;

    public enum a {
        FOREGROUND("fg"),
        BACKGROUND("bg");
        
        private final String c;

        private a(String str) {
            this.c = str;
        }

        public final String toString() {
            return this.c;
        }

        public static a a(String str) {
            a aVar = FOREGROUND;
            for (a aVar2 : values()) {
                if (aVar2.c.equals(str)) {
                    aVar = aVar2;
                }
            }
            return aVar;
        }
    }

    public a a() {
        return a.FOREGROUND;
    }

    public String toString() {
        return "ForegroundLocationCollectionConfig{updateTimeInterval=" + this.c + ", updateDistanceInterval=" + this.d + ", recordsCountToForceFlush=" + this.e + ", maxBatchSize=" + this.f + ", maxAgeToForceFlush=" + this.g + ", maxRecordsToStoreLocally=" + this.h + ", collectionEnabled=" + this.i + '}';
    }

    public hq(long j, float f2, int i2, int i3, long j2, int i4, boolean z) {
        this.c = j;
        this.d = f2;
        this.e = i2;
        this.f = i3;
        this.g = j2;
        this.h = i4;
        this.i = z;
    }
}
