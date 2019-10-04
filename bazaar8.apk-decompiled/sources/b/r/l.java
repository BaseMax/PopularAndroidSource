package b.r;

import androidx.lifecycle.Lifecycle;

/* compiled from: LifecycleRegistry */
/* synthetic */ class l {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f3165a = new int[Lifecycle.Event.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f3166b = new int[Lifecycle.State.values().length];

    /* JADX WARNING: Can't wrap try/catch for region: R(26:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
    /* JADX WARNING: Can't wrap try/catch for region: R(27:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|13|14|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
    /* JADX WARNING: Can't wrap try/catch for region: R(28:0|1|2|3|(2:5|6)|7|(2:9|10)|11|13|14|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
    /* JADX WARNING: Can't wrap try/catch for region: R(30:0|1|2|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0053 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x005d */
    /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0067 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0071 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x007b */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0086 */
    static {
        /*
            androidx.lifecycle.Lifecycle$State[] r0 = androidx.lifecycle.Lifecycle.State.values()
            int r0 = r0.length
            int[] r0 = new int[r0]
            f3166b = r0
            r0 = 1
            int[] r1 = f3166b     // Catch:{ NoSuchFieldError -> 0x0014 }
            androidx.lifecycle.Lifecycle$State r2 = androidx.lifecycle.Lifecycle.State.INITIALIZED     // Catch:{ NoSuchFieldError -> 0x0014 }
            int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
            r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r1 = 2
            int[] r2 = f3166b     // Catch:{ NoSuchFieldError -> 0x001f }
            androidx.lifecycle.Lifecycle$State r3 = androidx.lifecycle.Lifecycle.State.CREATED     // Catch:{ NoSuchFieldError -> 0x001f }
            int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
            r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r2 = 3
            int[] r3 = f3166b     // Catch:{ NoSuchFieldError -> 0x002a }
            androidx.lifecycle.Lifecycle$State r4 = androidx.lifecycle.Lifecycle.State.STARTED     // Catch:{ NoSuchFieldError -> 0x002a }
            int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
            r3[r4] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r3 = 4
            int[] r4 = f3166b     // Catch:{ NoSuchFieldError -> 0x0035 }
            androidx.lifecycle.Lifecycle$State r5 = androidx.lifecycle.Lifecycle.State.RESUMED     // Catch:{ NoSuchFieldError -> 0x0035 }
            int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
            r4[r5] = r3     // Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            r4 = 5
            int[] r5 = f3166b     // Catch:{ NoSuchFieldError -> 0x0040 }
            androidx.lifecycle.Lifecycle$State r6 = androidx.lifecycle.Lifecycle.State.DESTROYED     // Catch:{ NoSuchFieldError -> 0x0040 }
            int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
            r5[r6] = r4     // Catch:{ NoSuchFieldError -> 0x0040 }
        L_0x0040:
            androidx.lifecycle.Lifecycle$Event[] r5 = androidx.lifecycle.Lifecycle.Event.values()
            int r5 = r5.length
            int[] r5 = new int[r5]
            f3165a = r5
            int[] r5 = f3165a     // Catch:{ NoSuchFieldError -> 0x0053 }
            androidx.lifecycle.Lifecycle$Event r6 = androidx.lifecycle.Lifecycle.Event.ON_CREATE     // Catch:{ NoSuchFieldError -> 0x0053 }
            int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0053 }
            r5[r6] = r0     // Catch:{ NoSuchFieldError -> 0x0053 }
        L_0x0053:
            int[] r0 = f3165a     // Catch:{ NoSuchFieldError -> 0x005d }
            androidx.lifecycle.Lifecycle$Event r5 = androidx.lifecycle.Lifecycle.Event.ON_STOP     // Catch:{ NoSuchFieldError -> 0x005d }
            int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x005d }
            r0[r5] = r1     // Catch:{ NoSuchFieldError -> 0x005d }
        L_0x005d:
            int[] r0 = f3165a     // Catch:{ NoSuchFieldError -> 0x0067 }
            androidx.lifecycle.Lifecycle$Event r1 = androidx.lifecycle.Lifecycle.Event.ON_START     // Catch:{ NoSuchFieldError -> 0x0067 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0067 }
            r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0067 }
        L_0x0067:
            int[] r0 = f3165a     // Catch:{ NoSuchFieldError -> 0x0071 }
            androidx.lifecycle.Lifecycle$Event r1 = androidx.lifecycle.Lifecycle.Event.ON_PAUSE     // Catch:{ NoSuchFieldError -> 0x0071 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0071 }
            r0[r1] = r3     // Catch:{ NoSuchFieldError -> 0x0071 }
        L_0x0071:
            int[] r0 = f3165a     // Catch:{ NoSuchFieldError -> 0x007b }
            androidx.lifecycle.Lifecycle$Event r1 = androidx.lifecycle.Lifecycle.Event.ON_RESUME     // Catch:{ NoSuchFieldError -> 0x007b }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x007b }
            r0[r1] = r4     // Catch:{ NoSuchFieldError -> 0x007b }
        L_0x007b:
            int[] r0 = f3165a     // Catch:{ NoSuchFieldError -> 0x0086 }
            androidx.lifecycle.Lifecycle$Event r1 = androidx.lifecycle.Lifecycle.Event.ON_DESTROY     // Catch:{ NoSuchFieldError -> 0x0086 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0086 }
            r2 = 6
            r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0086 }
        L_0x0086:
            int[] r0 = f3165a     // Catch:{ NoSuchFieldError -> 0x0091 }
            androidx.lifecycle.Lifecycle$Event r1 = androidx.lifecycle.Lifecycle.Event.ON_ANY     // Catch:{ NoSuchFieldError -> 0x0091 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0091 }
            r2 = 7
            r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0091 }
        L_0x0091:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.r.l.<clinit>():void");
    }
}
