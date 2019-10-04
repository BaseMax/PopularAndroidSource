package com.bumptech.glide.load.resource.bitmap;

public abstract class DownsampleStrategy {
    public static final DownsampleStrategy AT_LEAST = new a();
    public static final DownsampleStrategy AT_MOST = new b();
    public static final DownsampleStrategy CENTER_INSIDE = new c();
    public static final DownsampleStrategy CENTER_OUTSIDE = new d();
    public static final DownsampleStrategy DEFAULT = CENTER_OUTSIDE;
    public static final DownsampleStrategy FIT_CENTER = new e();
    public static final DownsampleStrategy NONE = new f();
    public static final com.bumptech.glide.load.f<DownsampleStrategy> OPTION = com.bumptech.glide.load.f.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", DEFAULT);

    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    static class a extends DownsampleStrategy {
        a() {
        }

        public final float getScaleFactor(int i, int i2, int i3, int i4) {
            int min = Math.min(i2 / i4, i / i3);
            if (min == 0) {
                return 1.0f;
            }
            return 1.0f / ((float) Integer.highestOneBit(min));
        }

        public final SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }
    }

    static class b extends DownsampleStrategy {
        b() {
        }

        public final float getScaleFactor(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil((double) Math.max(((float) i2) / ((float) i4), ((float) i) / ((float) i3)));
            int i5 = 1;
            int max = Math.max(1, Integer.highestOneBit(ceil));
            if (max >= ceil) {
                i5 = 0;
            }
            return 1.0f / ((float) (max << i5));
        }

        public final SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.MEMORY;
        }
    }

    static class c extends DownsampleStrategy {
        c() {
        }

        public final float getScaleFactor(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, FIT_CENTER.getScaleFactor(i, i2, i3, i4));
        }

        public final SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }
    }

    static class d extends DownsampleStrategy {
        d() {
        }

        public final float getScaleFactor(int i, int i2, int i3, int i4) {
            return Math.max(((float) i3) / ((float) i), ((float) i4) / ((float) i2));
        }

        public final SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }
    }

    static class e extends DownsampleStrategy {
        e() {
        }

        public final float getScaleFactor(int i, int i2, int i3, int i4) {
            return Math.min(((float) i3) / ((float) i), ((float) i4) / ((float) i2));
        }

        public final SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }
    }

    static class f extends DownsampleStrategy {
        public final float getScaleFactor(int i, int i2, int i3, int i4) {
            return 1.0f;
        }

        f() {
        }

        public final SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }
    }

    public abstract SampleSizeRounding getSampleSizeRounding(int i, int i2, int i3, int i4);

    public abstract float getScaleFactor(int i, int i2, int i3, int i4);
}
