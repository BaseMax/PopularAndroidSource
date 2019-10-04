package com.squareup.picasso;

import android.app.Notification;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.v;
import com.squareup.picasso.w;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class x {
    private static final AtomicInteger c = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    boolean f5309a;

    /* renamed from: b  reason: collision with root package name */
    Object f5310b;
    private final Picasso d;
    private final w.a e;
    private boolean f;
    private boolean g;
    private int h;
    private int i;
    private int j;
    private int k;
    private Drawable l;
    private Drawable m;

    x(Picasso picasso, Uri uri, int i2) {
        this.g = true;
        if (!picasso.o) {
            this.d = picasso;
            this.e = new w.a(uri, i2, picasso.l);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    x() {
        this.g = true;
        this.d = null;
        this.e = new w.a(null, 0, null);
    }

    public final x noPlaceholder() {
        if (this.h != 0) {
            throw new IllegalStateException("Placeholder resource already set.");
        } else if (this.l == null) {
            this.g = false;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public final x placeholder(int i2) {
        if (!this.g) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (i2 == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        } else if (this.l == null) {
            this.h = i2;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public final x placeholder(Drawable drawable) {
        if (!this.g) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (this.h == 0) {
            this.l = drawable;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public final x error(int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Error image resource invalid.");
        } else if (this.m == null) {
            this.i = i2;
            return this;
        } else {
            throw new IllegalStateException("Error image already set.");
        }
    }

    public final x error(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Error image may not be null.");
        } else if (this.i == 0) {
            this.m = drawable;
            return this;
        } else {
            throw new IllegalStateException("Error image already set.");
        }
    }

    public final x tag(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Tag invalid.");
        } else if (this.f5310b == null) {
            this.f5310b = obj;
            return this;
        } else {
            throw new IllegalStateException("Tag already set.");
        }
    }

    public final x fit() {
        this.f5309a = true;
        return this;
    }

    public final x resizeDimen(int i2, int i3) {
        Resources resources = this.d.e.getResources();
        return resize(resources.getDimensionPixelSize(i2), resources.getDimensionPixelSize(i3));
    }

    public final x resize(int i2, int i3) {
        this.e.resize(i2, i3);
        return this;
    }

    public final x centerCrop() {
        this.e.centerCrop(17);
        return this;
    }

    public final x centerCrop(int i2) {
        this.e.centerCrop(i2);
        return this;
    }

    public final x centerInside() {
        this.e.centerInside();
        return this;
    }

    public final x onlyScaleDown() {
        this.e.onlyScaleDown();
        return this;
    }

    public final x rotate(float f2) {
        this.e.rotate(f2);
        return this;
    }

    public final x rotate(float f2, float f3, float f4) {
        this.e.rotate(f2, f3, f4);
        return this;
    }

    public final x config(Bitmap.Config config) {
        this.e.config(config);
        return this;
    }

    public final x stableKey(String str) {
        this.e.stableKey(str);
        return this;
    }

    public final x priority(Picasso.Priority priority) {
        this.e.priority(priority);
        return this;
    }

    public final x transform(ae aeVar) {
        this.e.transform(aeVar);
        return this;
    }

    public final x transform(List<? extends ae> list) {
        this.e.transform(list);
        return this;
    }

    public final x memoryPolicy(MemoryPolicy memoryPolicy, MemoryPolicy... memoryPolicyArr) {
        if (memoryPolicy != null) {
            this.j = memoryPolicy.f5242a | this.j;
            if (memoryPolicyArr != null) {
                if (memoryPolicyArr.length > 0) {
                    int length = memoryPolicyArr.length;
                    int i2 = 0;
                    while (i2 < length) {
                        MemoryPolicy memoryPolicy2 = memoryPolicyArr[i2];
                        if (memoryPolicy2 != null) {
                            this.j = memoryPolicy2.f5242a | this.j;
                            i2++;
                        } else {
                            throw new IllegalArgumentException("Memory policy cannot be null.");
                        }
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("Memory policy cannot be null.");
        }
        throw new IllegalArgumentException("Memory policy cannot be null.");
    }

    public final x networkPolicy(NetworkPolicy networkPolicy, NetworkPolicy... networkPolicyArr) {
        if (networkPolicy != null) {
            this.k = networkPolicy.f5243a | this.k;
            if (networkPolicyArr != null) {
                if (networkPolicyArr.length > 0) {
                    int length = networkPolicyArr.length;
                    int i2 = 0;
                    while (i2 < length) {
                        NetworkPolicy networkPolicy2 = networkPolicyArr[i2];
                        if (networkPolicy2 != null) {
                            this.k = networkPolicy2.f5243a | this.k;
                            i2++;
                        } else {
                            throw new IllegalArgumentException("Network policy cannot be null.");
                        }
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("Network policy cannot be null.");
        }
        throw new IllegalArgumentException("Network policy cannot be null.");
    }

    public final x purgeable() {
        this.e.purgeable();
        return this;
    }

    public final x noFade() {
        this.f = true;
        return this;
    }

    public final Bitmap get() throws IOException {
        long nanoTime = System.nanoTime();
        af.a();
        if (this.f5309a) {
            throw new IllegalStateException("Fit cannot be used with get.");
        } else if (!this.e.a()) {
            return null;
        } else {
            w a2 = a(nanoTime);
            m mVar = new m(this.d, a2, this.j, this.k, this.f5310b, af.a(a2, new StringBuilder()));
            Picasso picasso = this.d;
            return c.a(picasso, picasso.f, this.d.g, this.d.h, (a) mVar).a();
        }
    }

    public final void fetch() {
        fetch(null);
    }

    public final void fetch(e eVar) {
        long nanoTime = System.nanoTime();
        if (!this.f5309a) {
            if (this.e.a()) {
                if (!(this.e.c != null)) {
                    this.e.priority(Picasso.Priority.LOW);
                }
                w a2 = a(nanoTime);
                String a3 = af.a(a2, new StringBuilder());
                if (!MemoryPolicy.a(this.j) || this.d.a(a3) == null) {
                    k kVar = new k(this.d, a2, this.j, this.k, this.f5310b, a3, eVar);
                    this.d.b(kVar);
                } else {
                    if (this.d.n) {
                        String b2 = a2.b();
                        af.a("Main", "completed", b2, "from " + Picasso.LoadedFrom.MEMORY);
                    }
                    if (eVar != null) {
                        eVar.onSuccess();
                    }
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException("Fit cannot be used with fetch.");
    }

    public final void into(ac acVar) {
        long nanoTime = System.nanoTime();
        af.b();
        if (acVar == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f5309a) {
            Drawable drawable = null;
            if (!this.e.a()) {
                this.d.cancelRequest(acVar);
                if (this.g) {
                    drawable = a();
                }
                acVar.onPrepareLoad(drawable);
                return;
            }
            w a2 = a(nanoTime);
            String a3 = af.a(a2);
            if (MemoryPolicy.a(this.j)) {
                Bitmap a4 = this.d.a(a3);
                if (a4 != null) {
                    this.d.cancelRequest(acVar);
                    acVar.onBitmapLoaded(a4, Picasso.LoadedFrom.MEMORY);
                    return;
                }
            }
            if (this.g) {
                drawable = a();
            }
            acVar.onPrepareLoad(drawable);
            ad adVar = new ad(this.d, acVar, a2, this.j, this.k, this.m, a3, this.f5310b, this.i);
            this.d.a((a) adVar);
        } else {
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
    }

    public final void into(RemoteViews remoteViews, int i2, int i3, Notification notification) {
        into(remoteViews, i2, i3, notification, null);
    }

    public final void into(RemoteViews remoteViews, int i2, int i3, Notification notification, String str) {
        into(remoteViews, i2, i3, notification, str, null);
    }

    public final void into(RemoteViews remoteViews, int i2, int i3, Notification notification, String str, e eVar) {
        long nanoTime = System.nanoTime();
        if (remoteViews == null) {
            throw new IllegalArgumentException("RemoteViews must not be null.");
        } else if (notification == null) {
            throw new IllegalArgumentException("Notification must not be null.");
        } else if (this.f5309a) {
            throw new IllegalStateException("Fit cannot be used with RemoteViews.");
        } else if (this.l == null && this.h == 0 && this.m == null) {
            w a2 = a(nanoTime);
            RemoteViews remoteViews2 = remoteViews;
            int i4 = i2;
            int i5 = i3;
            Notification notification2 = notification;
            String str2 = str;
            v.b bVar = new v.b(this.d, a2, remoteViews2, i4, i5, notification2, str2, this.j, this.k, af.a(a2, new StringBuilder()), this.f5310b, this.i, eVar);
            a((v) bVar);
        } else {
            throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
        }
    }

    public final void into(RemoteViews remoteViews, int i2, int[] iArr) {
        into(remoteViews, i2, iArr, (e) null);
    }

    public final void into(RemoteViews remoteViews, int i2, int[] iArr, e eVar) {
        long nanoTime = System.nanoTime();
        if (remoteViews == null) {
            throw new IllegalArgumentException("remoteViews must not be null.");
        } else if (iArr == null) {
            throw new IllegalArgumentException("appWidgetIds must not be null.");
        } else if (this.f5309a) {
            throw new IllegalStateException("Fit cannot be used with remote views.");
        } else if (this.l == null && this.h == 0 && this.m == null) {
            w a2 = a(nanoTime);
            RemoteViews remoteViews2 = remoteViews;
            int i3 = i2;
            int[] iArr2 = iArr;
            v.a aVar = new v.a(this.d, a2, remoteViews2, i3, iArr2, this.j, this.k, af.a(a2, new StringBuilder()), this.f5310b, this.i, eVar);
            a((v) aVar);
        } else {
            throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
        }
    }

    public final void into(ImageView imageView) {
        into(imageView, null);
    }

    public final void into(ImageView imageView, e eVar) {
        ImageView imageView2 = imageView;
        e eVar2 = eVar;
        long nanoTime = System.nanoTime();
        af.b();
        if (imageView2 == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.e.a()) {
            this.d.cancelRequest(imageView2);
            if (this.g) {
                t.a(imageView2, a());
            }
        } else {
            if (this.f5309a) {
                w.a aVar = this.e;
                if (!((aVar.f5307a == 0 && aVar.f5308b == 0) ? false : true)) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width == 0 || height == 0) {
                        if (this.g) {
                            t.a(imageView2, a());
                        }
                        Picasso picasso = this.d;
                        h hVar = new h(this, imageView2, eVar2);
                        if (picasso.j.containsKey(imageView2)) {
                            picasso.a((Object) imageView2);
                        }
                        picasso.j.put(imageView2, hVar);
                        return;
                    }
                    this.e.resize(width, height);
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            w a2 = a(nanoTime);
            String a3 = af.a(a2);
            if (MemoryPolicy.a(this.j)) {
                Bitmap a4 = this.d.a(a3);
                if (a4 != null) {
                    this.d.cancelRequest(imageView2);
                    t.a(imageView, this.d.e, a4, Picasso.LoadedFrom.MEMORY, this.f, this.d.m);
                    if (this.d.n) {
                        String b2 = a2.b();
                        af.a("Main", "completed", b2, "from " + Picasso.LoadedFrom.MEMORY);
                    }
                    if (eVar2 != null) {
                        eVar.onSuccess();
                    }
                    return;
                }
            }
            if (this.g) {
                t.a(imageView2, a());
            }
            n nVar = new n(this.d, imageView, a2, this.j, this.k, this.i, this.m, a3, this.f5310b, eVar, this.f);
            this.d.a((a) nVar);
        }
    }

    private Drawable a() {
        if (this.h == 0) {
            return this.l;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return this.d.e.getDrawable(this.h);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return this.d.e.getResources().getDrawable(this.h);
        }
        TypedValue typedValue = new TypedValue();
        this.d.e.getResources().getValue(this.h, typedValue, true);
        return this.d.e.getResources().getDrawable(typedValue.resourceId);
    }

    private w a(long j2) {
        int andIncrement = c.getAndIncrement();
        w build = this.e.build();
        build.f5305a = andIncrement;
        build.f5306b = j2;
        boolean z = this.d.n;
        if (z) {
            af.a("Main", "created", build.b(), build.toString());
        }
        w a2 = this.d.a(build);
        if (a2 != build) {
            a2.f5305a = andIncrement;
            a2.f5306b = j2;
            if (z) {
                af.a("Main", "changed", a2.a(), "into ".concat(String.valueOf(a2)));
            }
        }
        return a2;
    }

    private void a(v vVar) {
        if (MemoryPolicy.a(this.j)) {
            Bitmap a2 = this.d.a(vVar.i);
            if (a2 != null) {
                vVar.complete(a2, Picasso.LoadedFrom.MEMORY);
                return;
            }
        }
        int i2 = this.h;
        if (i2 != 0) {
            vVar.a(i2);
        }
        this.d.a((a) vVar);
    }
}
