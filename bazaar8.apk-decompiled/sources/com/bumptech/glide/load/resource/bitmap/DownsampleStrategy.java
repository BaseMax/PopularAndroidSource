package com.bumptech.glide.load.resource.bitmap;

public abstract class DownsampleStrategy {

    /* renamed from: a  reason: collision with root package name */
    public static final DownsampleStrategy f12072a = new e();

    /* renamed from: b  reason: collision with root package name */
    public static final DownsampleStrategy f12073b = new d();

    /* renamed from: c  reason: collision with root package name */
    public static final DownsampleStrategy f12074c = new a();

    /* renamed from: d  reason: collision with root package name */
    public static final DownsampleStrategy f12075d = new b();

    /* renamed from: e  reason: collision with root package name */
    public static final DownsampleStrategy f12076e = new c();

    /* renamed from: f  reason: collision with root package name */
    public static final DownsampleStrategy f12077f = new f();

    /* renamed from: g  reason: collision with root package name */
    public static final DownsampleStrategy f12078g = f12073b;

    /* renamed from: h  reason: collision with root package name */
    public static final c.b.a.c.e<DownsampleStrategy> f12079h = c.b.a.c.e.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", f12078g);

    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    private static class a extends DownsampleStrategy {
        public SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        public float b(int i2, int i3, int i4, int i5) {
            int min = Math.min(i3 / i5, i2 / i4);
            if (min == 0) {
                return 1.0f;
            }
            return 1.0f / ((float) Integer.highestOneBit(min));
        }
    }

    private static class b extends DownsampleStrategy {
        public SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.MEMORY;
        }

        public float b(int i2, int i3, int i4, int i5) {
            int ceil = (int) Math.ceil((double) Math.max(((float) i3) / ((float) i5), ((float) i2) / ((float) i4)));
            int i6 = 1;
            int max = Math.max(1, Integer.highestOneBit(ceil));
            if (max >= ceil) {
                i6 = 0;
            }
            return 1.0f / ((float) (max << i6));
        }
    }

    private static class c extends DownsampleStrategy {
        public SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        public float b(int i2, int i3, int i4, int i5) {
            return Math.min(1.0f, DownsampleStrategy.f12072a.b(i2, i3, i4, i5));
        }
    }

    private static class d extends DownsampleStrategy {
        public SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        public float b(int i2, int i3, int i4, int i5) {
            return Math.max(((float) i4) / ((float) i2), ((float) i5) / ((float) i3));
        }
    }

    private static class e extends DownsampleStrategy {
        public SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        public float b(int i2, int i3, int i4, int i5) {
            return Math.min(((float) i4) / ((float) i2), ((float) i5) / ((float) i3));
        }
    }

    private static class f extends DownsampleStrategy {
        public SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        public float b(int i2, int i3, int i4, int i5) {
            return 1.0f;
        }
    }

    public abstract SampleSizeRounding a(int i2, int i3, int i4, int i5);

    public abstract float b(int i2, int i3, int i4, int i5);
}
