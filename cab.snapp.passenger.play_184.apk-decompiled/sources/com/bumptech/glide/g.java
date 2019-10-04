package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.bumptech.glide.e.a;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.e.b;
import com.bumptech.glide.e.c;
import com.bumptech.glide.e.d;
import com.bumptech.glide.e.f;
import com.bumptech.glide.e.h;
import com.bumptech.glide.g.e;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.j;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public final class g<TranscodeType> extends a<g<TranscodeType>> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    protected static final h f2057a = ((h) ((h) ((h) new h().diskCacheStrategy(j.DATA)).priority(Priority.LOW)).skipMemoryCache(true));
    private final Context c;
    private final h d;
    private final Class<TranscodeType> e;
    private final c f;
    private final e g;
    private i<?, ? super TranscodeType> h;
    private Object i;
    private List<com.bumptech.glide.e.g<TranscodeType>> j;
    private g<TranscodeType> k;
    private g<TranscodeType> l;
    private Float m;
    private boolean n;
    private boolean o;
    private boolean p;

    /* renamed from: com.bumptech.glide.g$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2058a = new int[ImageView.ScaleType.values().length];

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f2059b = new int[Priority.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(24:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|17|18|19|20|21|22|23|24|25|26|27|28|29|30|(3:31|32|34)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(26:0|1|2|3|(2:5|6)|7|(2:9|10)|11|13|14|15|17|18|19|20|21|22|23|24|25|26|27|28|29|30|(3:31|32|34)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(28:0|1|2|3|(2:5|6)|7|(2:9|10)|11|13|14|15|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|34) */
        /* JADX WARNING: Can't wrap try/catch for region: R(29:0|1|2|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|34) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0048 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0052 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x005c */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0066 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0071 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x007c */
        /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x0087 */
        static {
            /*
                com.bumptech.glide.Priority[] r0 = com.bumptech.glide.Priority.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f2059b = r0
                r0 = 1
                int[] r1 = f2059b     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.bumptech.glide.Priority r2 = com.bumptech.glide.Priority.LOW     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r1 = 2
                int[] r2 = f2059b     // Catch:{ NoSuchFieldError -> 0x001f }
                com.bumptech.glide.Priority r3 = com.bumptech.glide.Priority.NORMAL     // Catch:{ NoSuchFieldError -> 0x001f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                r2 = 3
                int[] r3 = f2059b     // Catch:{ NoSuchFieldError -> 0x002a }
                com.bumptech.glide.Priority r4 = com.bumptech.glide.Priority.HIGH     // Catch:{ NoSuchFieldError -> 0x002a }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r3[r4] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                r3 = 4
                int[] r4 = f2059b     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.bumptech.glide.Priority r5 = com.bumptech.glide.Priority.IMMEDIATE     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r4[r5] = r3     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                android.widget.ImageView$ScaleType[] r4 = android.widget.ImageView.ScaleType.values()
                int r4 = r4.length
                int[] r4 = new int[r4]
                f2058a = r4
                int[] r4 = f2058a     // Catch:{ NoSuchFieldError -> 0x0048 }
                android.widget.ImageView$ScaleType r5 = android.widget.ImageView.ScaleType.CENTER_CROP     // Catch:{ NoSuchFieldError -> 0x0048 }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x0048 }
                r4[r5] = r0     // Catch:{ NoSuchFieldError -> 0x0048 }
            L_0x0048:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x0052 }
                android.widget.ImageView$ScaleType r4 = android.widget.ImageView.ScaleType.CENTER_INSIDE     // Catch:{ NoSuchFieldError -> 0x0052 }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x0052 }
                r0[r4] = r1     // Catch:{ NoSuchFieldError -> 0x0052 }
            L_0x0052:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x005c }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_CENTER     // Catch:{ NoSuchFieldError -> 0x005c }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x005c }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x005c }
            L_0x005c:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x0066 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_START     // Catch:{ NoSuchFieldError -> 0x0066 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0066 }
                r0[r1] = r3     // Catch:{ NoSuchFieldError -> 0x0066 }
            L_0x0066:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x0071 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_END     // Catch:{ NoSuchFieldError -> 0x0071 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0071 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0071 }
            L_0x0071:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x007c }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x007c }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x007c }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x007c }
            L_0x007c:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x0087 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER     // Catch:{ NoSuchFieldError -> 0x0087 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0087 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0087 }
            L_0x0087:
                int[] r0 = f2058a     // Catch:{ NoSuchFieldError -> 0x0093 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.MATRIX     // Catch:{ NoSuchFieldError -> 0x0093 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0093 }
                r2 = 8
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0093 }
            L_0x0093:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.g.AnonymousClass1.<clinit>():void");
        }
    }

    protected g(c cVar, h hVar, Class<TranscodeType> cls, Context context) {
        this.n = true;
        this.f = cVar;
        this.d = hVar;
        this.e = cls;
        this.c = context;
        this.h = hVar.a(cls);
        this.g = cVar.f1997a;
        for (com.bumptech.glide.e.g<Object> addListener : hVar.d) {
            addListener(addListener);
        }
        apply((a) hVar.a());
    }

    private g(Class<TranscodeType> cls, g<?> gVar) {
        this(gVar.f, gVar.d, cls, gVar.c);
        this.i = gVar.i;
        this.o = gVar.o;
        apply((a) gVar);
    }

    public final g<TranscodeType> apply(a<?> aVar) {
        com.bumptech.glide.g.j.checkNotNull(aVar);
        return (g) super.apply(aVar);
    }

    public final g<TranscodeType> transition(i<?, ? super TranscodeType> iVar) {
        this.h = (i) com.bumptech.glide.g.j.checkNotNull(iVar);
        this.n = false;
        return this;
    }

    public final g<TranscodeType> listener(com.bumptech.glide.e.g<TranscodeType> gVar) {
        this.j = null;
        return addListener(gVar);
    }

    public final g<TranscodeType> addListener(com.bumptech.glide.e.g<TranscodeType> gVar) {
        if (gVar != null) {
            if (this.j == null) {
                this.j = new ArrayList();
            }
            this.j.add(gVar);
        }
        return this;
    }

    public final g<TranscodeType> error(g<TranscodeType> gVar) {
        this.l = gVar;
        return this;
    }

    public final g<TranscodeType> thumbnail(g<TranscodeType> gVar) {
        this.k = gVar;
        return this;
    }

    public final g<TranscodeType> thumbnail(g<TranscodeType>... gVarArr) {
        g<TranscodeType> gVar = null;
        if (gVarArr == null || gVarArr.length == 0) {
            return thumbnail((g) null);
        }
        for (int length = gVarArr.length - 1; length >= 0; length--) {
            g<TranscodeType> gVar2 = gVarArr[length];
            if (gVar2 != null) {
                gVar = gVar == null ? gVar2 : gVar2.thumbnail(gVar);
            }
        }
        return thumbnail(gVar);
    }

    public final g<TranscodeType> thumbnail(float f2) {
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.m = Float.valueOf(f2);
        return this;
    }

    public final g<TranscodeType> load(Object obj) {
        return a(obj);
    }

    private g<TranscodeType> a(Object obj) {
        this.i = obj;
        this.o = true;
        return this;
    }

    public final g<TranscodeType> load(Bitmap bitmap) {
        return a((Object) bitmap).apply((a) h.diskCacheStrategyOf(j.NONE));
    }

    public final g<TranscodeType> load(Drawable drawable) {
        return a((Object) drawable).apply((a) h.diskCacheStrategyOf(j.NONE));
    }

    public final g<TranscodeType> load(String str) {
        return a((Object) str);
    }

    public final g<TranscodeType> load(Uri uri) {
        return a((Object) uri);
    }

    public final g<TranscodeType> load(File file) {
        return a((Object) file);
    }

    public final g<TranscodeType> load(Integer num) {
        return a((Object) num).apply((a) h.signatureOf(com.bumptech.glide.f.a.obtain(this.c)));
    }

    @Deprecated
    public final g<TranscodeType> load(URL url) {
        return a((Object) url);
    }

    public final g<TranscodeType> load(byte[] bArr) {
        g<TranscodeType> a2 = a((Object) bArr);
        if (!a2.isDiskCacheStrategySet()) {
            a2 = a2.apply((a) h.diskCacheStrategyOf(j.NONE));
        }
        return !a2.isSkipMemoryCacheSet() ? a2.apply((a) h.skipMemoryCacheOf(true)) : a2;
    }

    public final g<TranscodeType> clone() {
        g<TranscodeType> gVar = (g) super.clone();
        gVar.h = gVar.h.clone();
        return gVar;
    }

    public final <Y extends i<TranscodeType>> Y into(Y y) {
        return a(y, null, e.mainThreadExecutor());
    }

    private <Y extends i<TranscodeType>> Y a(Y y, com.bumptech.glide.e.g<TranscodeType> gVar, Executor executor) {
        return a(y, gVar, this, executor);
    }

    private <Y extends i<TranscodeType>> Y a(Y y, com.bumptech.glide.e.g<TranscodeType> gVar, a<?> aVar, Executor executor) {
        com.bumptech.glide.g.j.checkNotNull(y);
        if (this.o) {
            d b2 = b(y, gVar, aVar, executor);
            d request = y.getRequest();
            if (!b2.isEquivalentTo(request) || a(aVar, request)) {
                this.d.clear((i<?>) y);
                y.setRequest(b2);
                this.d.a(y, b2);
                return y;
            }
            b2.recycle();
            if (!((d) com.bumptech.glide.g.j.checkNotNull(request)).isRunning()) {
                request.begin();
            }
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    private static boolean a(a<?> aVar, d dVar) {
        return !aVar.isMemoryCacheable() && dVar.isComplete();
    }

    public final com.bumptech.glide.e.a.j<ImageView, TranscodeType> into(ImageView imageView) {
        a aVar;
        k.assertMainThread();
        com.bumptech.glide.g.j.checkNotNull(imageView);
        if (!isTransformationSet() && isTransformationAllowed() && imageView.getScaleType() != null) {
            switch (AnonymousClass1.f2058a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVar = clone().optionalCenterCrop();
                    break;
                case 2:
                    aVar = clone().optionalCenterInside();
                    break;
                case 3:
                case 4:
                case 5:
                    aVar = clone().optionalFitCenter();
                    break;
                case 6:
                    aVar = clone().optionalCenterInside();
                    break;
            }
        }
        aVar = this;
        return (com.bumptech.glide.e.a.j) a(this.g.buildImageViewTarget(imageView, this.e), null, aVar, e.mainThreadExecutor());
    }

    @Deprecated
    public final c<TranscodeType> into(int i2, int i3) {
        return submit(i2, i3);
    }

    public final c<TranscodeType> submit() {
        return submit(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public final c<TranscodeType> submit(int i2, int i3) {
        f fVar = new f(i2, i3);
        return (c) a(fVar, fVar, e.directExecutor());
    }

    public final i<TranscodeType> preload(int i2, int i3) {
        return into(com.bumptech.glide.e.a.f.obtain(this.d, i2, i3));
    }

    public final i<TranscodeType> preload() {
        return preload(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Deprecated
    public final <Y extends i<File>> Y downloadOnly(Y y) {
        return a().into(y);
    }

    @Deprecated
    public final c<File> downloadOnly(int i2, int i3) {
        return a().submit(i2, i3);
    }

    private g<File> a() {
        return new g(File.class, this).apply((a) f2057a);
    }

    private Priority a(Priority priority) {
        int i2 = AnonymousClass1.f2059b[priority.ordinal()];
        if (i2 == 1) {
            return Priority.NORMAL;
        }
        if (i2 == 2) {
            return Priority.HIGH;
        }
        if (i2 == 3 || i2 == 4) {
            return Priority.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + getPriority());
    }

    private d b(i<TranscodeType> iVar, com.bumptech.glide.e.g<TranscodeType> gVar, a<?> aVar, Executor executor) {
        return a(iVar, gVar, (com.bumptech.glide.e.e) null, this.h, aVar.getPriority(), aVar.getOverrideWidth(), aVar.getOverrideHeight(), aVar, executor);
    }

    private d a(i<TranscodeType> iVar, com.bumptech.glide.e.g<TranscodeType> gVar, com.bumptech.glide.e.e eVar, i<?, ? super TranscodeType> iVar2, Priority priority, int i2, int i3, a<?> aVar, Executor executor) {
        b bVar;
        b bVar2;
        if (this.l != null) {
            bVar2 = new b(eVar);
            bVar = bVar2;
        } else {
            bVar = null;
            bVar2 = eVar;
        }
        d b2 = b(iVar, gVar, bVar2, iVar2, priority, i2, i3, aVar, executor);
        if (bVar == null) {
            return b2;
        }
        int overrideWidth = this.l.getOverrideWidth();
        int overrideHeight = this.l.getOverrideHeight();
        if (k.isValidDimensions(i2, i3) && !this.l.isValidOverride()) {
            overrideWidth = aVar.getOverrideWidth();
            overrideHeight = aVar.getOverrideHeight();
        }
        g<TranscodeType> gVar2 = this.l;
        b bVar3 = bVar;
        bVar3.setRequests(b2, gVar2.a(iVar, gVar, (com.bumptech.glide.e.e) bVar, gVar2.h, gVar2.getPriority(), overrideWidth, overrideHeight, (a<?>) this.l, executor));
        return bVar3;
    }

    /* JADX WARNING: type inference failed for: r29v0, types: [com.bumptech.glide.e.a<?>, com.bumptech.glide.e.a] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.bumptech.glide.e.d b(com.bumptech.glide.e.a.i<TranscodeType> r22, com.bumptech.glide.e.g<TranscodeType> r23, com.bumptech.glide.e.e r24, com.bumptech.glide.i<?, ? super TranscodeType> r25, com.bumptech.glide.Priority r26, int r27, int r28, com.bumptech.glide.e.a<?> r29, java.util.concurrent.Executor r30) {
        /*
            r21 = this;
            r10 = r21
            r4 = r24
            r11 = r26
            com.bumptech.glide.g<TranscodeType> r0 = r10.k
            if (r0 == 0) goto L_0x0091
            boolean r1 = r10.p
            if (r1 != 0) goto L_0x0089
            com.bumptech.glide.i<?, ? super TranscodeType> r1 = r0.h
            boolean r0 = r0.n
            if (r0 == 0) goto L_0x0017
            r15 = r25
            goto L_0x0018
        L_0x0017:
            r15 = r1
        L_0x0018:
            com.bumptech.glide.g<TranscodeType> r0 = r10.k
            boolean r0 = r0.isPrioritySet()
            if (r0 == 0) goto L_0x0027
            com.bumptech.glide.g<TranscodeType> r0 = r10.k
            com.bumptech.glide.Priority r0 = r0.getPriority()
            goto L_0x002b
        L_0x0027:
            com.bumptech.glide.Priority r0 = r10.a((com.bumptech.glide.Priority) r11)
        L_0x002b:
            r16 = r0
            com.bumptech.glide.g<TranscodeType> r0 = r10.k
            int r0 = r0.getOverrideWidth()
            com.bumptech.glide.g<TranscodeType> r1 = r10.k
            int r1 = r1.getOverrideHeight()
            boolean r2 = com.bumptech.glide.g.k.isValidDimensions(r27, r28)
            if (r2 == 0) goto L_0x004f
            com.bumptech.glide.g<TranscodeType> r2 = r10.k
            boolean r2 = r2.isValidOverride()
            if (r2 != 0) goto L_0x004f
            int r0 = r29.getOverrideWidth()
            int r1 = r29.getOverrideHeight()
        L_0x004f:
            r17 = r0
            r18 = r1
            com.bumptech.glide.e.k r14 = new com.bumptech.glide.e.k
            r14.<init>(r4)
            r0 = r21
            r1 = r22
            r2 = r23
            r3 = r29
            r4 = r14
            r5 = r25
            r6 = r26
            r7 = r27
            r8 = r28
            r9 = r30
            com.bumptech.glide.e.d r0 = r0.a(r1, r2, (com.bumptech.glide.e.a<?>) r3, (com.bumptech.glide.e.e) r4, r5, (com.bumptech.glide.Priority) r6, (int) r7, (int) r8, (java.util.concurrent.Executor) r9)
            r1 = 1
            r10.p = r1
            com.bumptech.glide.g<TranscodeType> r1 = r10.k
            r11 = r1
            r12 = r22
            r13 = r23
            r2 = r14
            r19 = r1
            r20 = r30
            com.bumptech.glide.e.d r1 = r11.a(r12, r13, (com.bumptech.glide.e.e) r14, r15, (com.bumptech.glide.Priority) r16, (int) r17, (int) r18, (com.bumptech.glide.e.a<?>) r19, (java.util.concurrent.Executor) r20)
            r3 = 0
            r10.p = r3
            r2.setRequests(r0, r1)
            return r2
        L_0x0089:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"
            r0.<init>(r1)
            throw r0
        L_0x0091:
            java.lang.Float r0 = r10.m
            if (r0 == 0) goto L_0x00cf
            com.bumptech.glide.e.k r12 = new com.bumptech.glide.e.k
            r12.<init>(r4)
            r0 = r21
            r1 = r22
            r2 = r23
            r3 = r29
            r4 = r12
            r5 = r25
            r6 = r26
            r7 = r27
            r8 = r28
            r9 = r30
            com.bumptech.glide.e.d r13 = r0.a(r1, r2, (com.bumptech.glide.e.a<?>) r3, (com.bumptech.glide.e.e) r4, r5, (com.bumptech.glide.Priority) r6, (int) r7, (int) r8, (java.util.concurrent.Executor) r9)
            com.bumptech.glide.e.a r0 = r29.clone()
            java.lang.Float r1 = r10.m
            float r1 = r1.floatValue()
            com.bumptech.glide.e.a r3 = r0.sizeMultiplier(r1)
            com.bumptech.glide.Priority r6 = r10.a((com.bumptech.glide.Priority) r11)
            r0 = r21
            r1 = r22
            com.bumptech.glide.e.d r0 = r0.a(r1, r2, (com.bumptech.glide.e.a<?>) r3, (com.bumptech.glide.e.e) r4, r5, (com.bumptech.glide.Priority) r6, (int) r7, (int) r8, (java.util.concurrent.Executor) r9)
            r12.setRequests(r13, r0)
            return r12
        L_0x00cf:
            r0 = r21
            r1 = r22
            r2 = r23
            r3 = r29
            r4 = r24
            r5 = r25
            r6 = r26
            r7 = r27
            r8 = r28
            r9 = r30
            com.bumptech.glide.e.d r0 = r0.a(r1, r2, (com.bumptech.glide.e.a<?>) r3, (com.bumptech.glide.e.e) r4, r5, (com.bumptech.glide.Priority) r6, (int) r7, (int) r8, (java.util.concurrent.Executor) r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.g.b(com.bumptech.glide.e.a.i, com.bumptech.glide.e.g, com.bumptech.glide.e.e, com.bumptech.glide.i, com.bumptech.glide.Priority, int, int, com.bumptech.glide.e.a, java.util.concurrent.Executor):com.bumptech.glide.e.d");
    }

    private d a(i<TranscodeType> iVar, com.bumptech.glide.e.g<TranscodeType> gVar, a<?> aVar, com.bumptech.glide.e.e eVar, i<?, ? super TranscodeType> iVar2, Priority priority, int i2, int i3, Executor executor) {
        Context context = this.c;
        e eVar2 = this.g;
        return com.bumptech.glide.e.j.obtain(context, eVar2, this.i, this.e, aVar, i2, i3, priority, iVar, gVar, this.j, eVar, eVar2.getEngine(), iVar2.f2091a, executor);
    }
}
