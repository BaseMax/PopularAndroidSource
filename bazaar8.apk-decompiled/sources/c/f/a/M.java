package c.f.a;

import java.io.PrintWriter;

/* compiled from: StatsSnapshot */
public class M {

    /* renamed from: a  reason: collision with root package name */
    public final int f11944a;

    /* renamed from: b  reason: collision with root package name */
    public final int f11945b;

    /* renamed from: c  reason: collision with root package name */
    public final long f11946c;

    /* renamed from: d  reason: collision with root package name */
    public final long f11947d;

    /* renamed from: e  reason: collision with root package name */
    public final long f11948e;

    /* renamed from: f  reason: collision with root package name */
    public final long f11949f;

    /* renamed from: g  reason: collision with root package name */
    public final long f11950g;

    /* renamed from: h  reason: collision with root package name */
    public final long f11951h;

    /* renamed from: i  reason: collision with root package name */
    public final long f11952i;

    /* renamed from: j  reason: collision with root package name */
    public final long f11953j;

    /* renamed from: k  reason: collision with root package name */
    public final int f11954k;

    /* renamed from: l  reason: collision with root package name */
    public final int f11955l;
    public final int m;
    public final long n;

    public M(int i2, int i3, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, int i4, int i5, int i6, long j10) {
        this.f11944a = i2;
        this.f11945b = i3;
        this.f11946c = j2;
        this.f11947d = j3;
        this.f11948e = j4;
        this.f11949f = j5;
        this.f11950g = j6;
        this.f11951h = j7;
        this.f11952i = j8;
        this.f11953j = j9;
        this.f11954k = i4;
        this.f11955l = i5;
        this.m = i6;
        this.n = j10;
    }

    public void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f11944a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f11945b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((double) ((((float) this.f11945b) / ((float) this.f11944a)) * 100.0f)));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f11946c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f11947d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f11954k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f11948e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f11951h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f11955l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f11949f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f11950g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f11952i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f11953j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f11944a + ", size=" + this.f11945b + ", cacheHits=" + this.f11946c + ", cacheMisses=" + this.f11947d + ", downloadCount=" + this.f11954k + ", totalDownloadSize=" + this.f11948e + ", averageDownloadSize=" + this.f11951h + ", totalOriginalBitmapSize=" + this.f11949f + ", totalTransformedBitmapSize=" + this.f11950g + ", averageOriginalBitmapSize=" + this.f11952i + ", averageTransformedBitmapSize=" + this.f11953j + ", originalBitmapCount=" + this.f11955l + ", transformedBitmapCount=" + this.m + ", timeStamp=" + this.n + '}';
    }
}
