package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class w {
    private static final long d = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a  reason: collision with root package name */
    int f5305a;

    /* renamed from: b  reason: collision with root package name */
    long f5306b;
    int c;
    public final boolean centerCrop;
    public final int centerCropGravity;
    public final boolean centerInside;
    public final Bitmap.Config config;
    public final boolean hasRotationPivot;
    public final boolean onlyScaleDown;
    public final Picasso.Priority priority;
    public final boolean purgeable;
    public final int resourceId;
    public final float rotationDegrees;
    public final float rotationPivotX;
    public final float rotationPivotY;
    public final String stableKey;
    public final int targetHeight;
    public final int targetWidth;
    public final List<ae> transformations;
    public final Uri uri;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f5307a;

        /* renamed from: b  reason: collision with root package name */
        int f5308b;
        Picasso.Priority c;
        private Uri d;
        private int e;
        private String f;
        private boolean g;
        private int h;
        private boolean i;
        private boolean j;
        private float k;
        private float l;
        private float m;
        private boolean n;
        private boolean o;
        private List<ae> p;
        private Bitmap.Config q;

        /* synthetic */ a(w wVar, byte b2) {
            this(wVar);
        }

        public a(Uri uri) {
            setUri(uri);
        }

        public a(int i2) {
            setResourceId(i2);
        }

        a(Uri uri, int i2, Bitmap.Config config) {
            this.d = uri;
            this.e = i2;
            this.q = config;
        }

        private a(w wVar) {
            this.d = wVar.uri;
            this.e = wVar.resourceId;
            this.f = wVar.stableKey;
            this.f5307a = wVar.targetWidth;
            this.f5308b = wVar.targetHeight;
            this.g = wVar.centerCrop;
            this.i = wVar.centerInside;
            this.h = wVar.centerCropGravity;
            this.k = wVar.rotationDegrees;
            this.l = wVar.rotationPivotX;
            this.m = wVar.rotationPivotY;
            this.n = wVar.hasRotationPivot;
            this.o = wVar.purgeable;
            this.j = wVar.onlyScaleDown;
            if (wVar.transformations != null) {
                this.p = new ArrayList(wVar.transformations);
            }
            this.q = wVar.config;
            this.c = wVar.priority;
        }

        /* access modifiers changed from: package-private */
        public final boolean a() {
            return (this.d == null && this.e == 0) ? false : true;
        }

        public final a setUri(Uri uri) {
            if (uri != null) {
                this.d = uri;
                this.e = 0;
                return this;
            }
            throw new IllegalArgumentException("Image URI may not be null.");
        }

        public final a setResourceId(int i2) {
            if (i2 != 0) {
                this.e = i2;
                this.d = null;
                return this;
            }
            throw new IllegalArgumentException("Image resource ID may not be 0.");
        }

        public final a stableKey(String str) {
            this.f = str;
            return this;
        }

        public final a resize(int i2, int i3) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            } else if (i3 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            } else if (i3 == 0 && i2 == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            } else {
                this.f5307a = i2;
                this.f5308b = i3;
                return this;
            }
        }

        public final a clearResize() {
            this.f5307a = 0;
            this.f5308b = 0;
            this.g = false;
            this.i = false;
            return this;
        }

        public final a centerCrop() {
            return centerCrop(17);
        }

        public final a centerCrop(int i2) {
            if (!this.i) {
                this.g = true;
                this.h = i2;
                return this;
            }
            throw new IllegalStateException("Center crop can not be used after calling centerInside");
        }

        public final a clearCenterCrop() {
            this.g = false;
            this.h = 17;
            return this;
        }

        public final a centerInside() {
            if (!this.g) {
                this.i = true;
                return this;
            }
            throw new IllegalStateException("Center inside can not be used after calling centerCrop");
        }

        public final a clearCenterInside() {
            this.i = false;
            return this;
        }

        public final a onlyScaleDown() {
            if (this.f5308b == 0 && this.f5307a == 0) {
                throw new IllegalStateException("onlyScaleDown can not be applied without resize");
            }
            this.j = true;
            return this;
        }

        public final a clearOnlyScaleDown() {
            this.j = false;
            return this;
        }

        public final a rotate(float f2) {
            this.k = f2;
            return this;
        }

        public final a rotate(float f2, float f3, float f4) {
            this.k = f2;
            this.l = f3;
            this.m = f4;
            this.n = true;
            return this;
        }

        public final a clearRotation() {
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 0.0f;
            this.n = false;
            return this;
        }

        public final a purgeable() {
            this.o = true;
            return this;
        }

        public final a config(Bitmap.Config config) {
            if (config != null) {
                this.q = config;
                return this;
            }
            throw new IllegalArgumentException("config == null");
        }

        public final a priority(Picasso.Priority priority) {
            if (priority == null) {
                throw new IllegalArgumentException("Priority invalid.");
            } else if (this.c == null) {
                this.c = priority;
                return this;
            } else {
                throw new IllegalStateException("Priority already set.");
            }
        }

        public final a transform(ae aeVar) {
            if (aeVar == null) {
                throw new IllegalArgumentException("Transformation must not be null.");
            } else if (aeVar.key() != null) {
                if (this.p == null) {
                    this.p = new ArrayList(2);
                }
                this.p.add(aeVar);
                return this;
            } else {
                throw new IllegalArgumentException("Transformation key must not be null.");
            }
        }

        public final a transform(List<? extends ae> list) {
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transform((ae) list.get(i2));
                }
                return this;
            }
            throw new IllegalArgumentException("Transformation list must not be null.");
        }

        public final w build() {
            if (this.i && this.g) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            } else if (this.g && this.f5307a == 0 && this.f5308b == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            } else if (this.i && this.f5307a == 0 && this.f5308b == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            } else {
                if (this.c == null) {
                    this.c = Picasso.Priority.NORMAL;
                }
                w wVar = r2;
                w wVar2 = new w(this.d, this.e, this.f, this.p, this.f5307a, this.f5308b, this.g, this.i, this.h, this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.c, (byte) 0);
                return wVar;
            }
        }
    }

    /* synthetic */ w(Uri uri2, int i, String str, List list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config2, Picasso.Priority priority2, byte b2) {
        this(uri2, i, str, list, i2, i3, z, z2, i4, z3, f, f2, f3, z4, z5, config2, priority2);
    }

    private w(Uri uri2, int i, String str, List<ae> list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config2, Picasso.Priority priority2) {
        this.uri = uri2;
        this.resourceId = i;
        this.stableKey = str;
        if (list == null) {
            this.transformations = null;
        } else {
            this.transformations = Collections.unmodifiableList(list);
        }
        this.targetWidth = i2;
        this.targetHeight = i3;
        this.centerCrop = z;
        this.centerInside = z2;
        this.centerCropGravity = i4;
        this.onlyScaleDown = z3;
        this.rotationDegrees = f;
        this.rotationPivotX = f2;
        this.rotationPivotY = f3;
        this.hasRotationPivot = z4;
        this.purgeable = z5;
        this.config = config2;
        this.priority = priority2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.resourceId;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.uri);
        }
        List<ae> list = this.transformations;
        if (list != null && !list.isEmpty()) {
            for (ae key : this.transformations) {
                sb.append(' ');
                sb.append(key.key());
            }
        }
        if (this.stableKey != null) {
            sb.append(" stableKey(");
            sb.append(this.stableKey);
            sb.append(')');
        }
        if (this.targetWidth > 0) {
            sb.append(" resize(");
            sb.append(this.targetWidth);
            sb.append(',');
            sb.append(this.targetHeight);
            sb.append(')');
        }
        if (this.centerCrop) {
            sb.append(" centerCrop");
        }
        if (this.centerInside) {
            sb.append(" centerInside");
        }
        if (this.rotationDegrees != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.rotationDegrees);
            if (this.hasRotationPivot) {
                sb.append(" @ ");
                sb.append(this.rotationPivotX);
                sb.append(',');
                sb.append(this.rotationPivotY);
            }
            sb.append(')');
        }
        if (this.purgeable) {
            sb.append(" purgeable");
        }
        if (this.config != null) {
            sb.append(' ');
            sb.append(this.config);
        }
        sb.append('}');
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public final String a() {
        long nanoTime = System.nanoTime() - this.f5306b;
        if (nanoTime > d) {
            return b() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return b() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* access modifiers changed from: package-private */
    public final String b() {
        return "[R" + this.f5305a + ']';
    }

    public final boolean hasSize() {
        return (this.targetWidth == 0 && this.targetHeight == 0) ? false : true;
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        return hasSize() || this.rotationDegrees != 0.0f;
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        return this.transformations != null;
    }

    public final a buildUpon() {
        return new a(this, (byte) 0);
    }
}
