package b.H.a.c;

import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;

/* compiled from: WorkTypeConverters */
/* synthetic */ class E {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f1441a = new int[WorkInfo.State.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f1442b = new int[BackoffPolicy.values().length];

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ int[] f1443c = new int[NetworkType.values().length];

    /* JADX WARNING: Can't wrap try/catch for region: R(26:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|(2:17|18)|19|21|22|(2:23|24)|25|27|28|29|30|31|32|33|34|35|36|(3:37|38|40)) */
    /* JADX WARNING: Can't wrap try/catch for region: R(27:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|13|14|15|(2:17|18)|19|21|22|(2:23|24)|25|27|28|29|30|31|32|33|34|35|36|(3:37|38|40)) */
    /* JADX WARNING: Can't wrap try/catch for region: R(32:0|1|2|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|21|22|(2:23|24)|25|27|28|29|30|31|32|33|34|35|36|37|38|40) */
    /* JADX WARNING: Can't wrap try/catch for region: R(34:0|1|2|3|5|6|7|9|10|11|13|14|15|17|18|19|21|22|23|24|25|27|28|29|30|31|32|33|34|35|36|37|38|40) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0053 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0070 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x007a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0084 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x008e */
    /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0098 */
    static {
        /*
            androidx.work.NetworkType[] r0 = androidx.work.NetworkType.values()
            int r0 = r0.length
            int[] r0 = new int[r0]
            f1443c = r0
            r0 = 1
            int[] r1 = f1443c     // Catch:{ NoSuchFieldError -> 0x0014 }
            androidx.work.NetworkType r2 = androidx.work.NetworkType.NOT_REQUIRED     // Catch:{ NoSuchFieldError -> 0x0014 }
            int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
            r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r1 = 2
            int[] r2 = f1443c     // Catch:{ NoSuchFieldError -> 0x001f }
            androidx.work.NetworkType r3 = androidx.work.NetworkType.CONNECTED     // Catch:{ NoSuchFieldError -> 0x001f }
            int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
            r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r2 = 3
            int[] r3 = f1443c     // Catch:{ NoSuchFieldError -> 0x002a }
            androidx.work.NetworkType r4 = androidx.work.NetworkType.UNMETERED     // Catch:{ NoSuchFieldError -> 0x002a }
            int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
            r3[r4] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r3 = 4
            int[] r4 = f1443c     // Catch:{ NoSuchFieldError -> 0x0035 }
            androidx.work.NetworkType r5 = androidx.work.NetworkType.NOT_ROAMING     // Catch:{ NoSuchFieldError -> 0x0035 }
            int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
            r4[r5] = r3     // Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            r4 = 5
            int[] r5 = f1443c     // Catch:{ NoSuchFieldError -> 0x0040 }
            androidx.work.NetworkType r6 = androidx.work.NetworkType.METERED     // Catch:{ NoSuchFieldError -> 0x0040 }
            int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
            r5[r6] = r4     // Catch:{ NoSuchFieldError -> 0x0040 }
        L_0x0040:
            androidx.work.BackoffPolicy[] r5 = androidx.work.BackoffPolicy.values()
            int r5 = r5.length
            int[] r5 = new int[r5]
            f1442b = r5
            int[] r5 = f1442b     // Catch:{ NoSuchFieldError -> 0x0053 }
            androidx.work.BackoffPolicy r6 = androidx.work.BackoffPolicy.EXPONENTIAL     // Catch:{ NoSuchFieldError -> 0x0053 }
            int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0053 }
            r5[r6] = r0     // Catch:{ NoSuchFieldError -> 0x0053 }
        L_0x0053:
            int[] r5 = f1442b     // Catch:{ NoSuchFieldError -> 0x005d }
            androidx.work.BackoffPolicy r6 = androidx.work.BackoffPolicy.LINEAR     // Catch:{ NoSuchFieldError -> 0x005d }
            int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x005d }
            r5[r6] = r1     // Catch:{ NoSuchFieldError -> 0x005d }
        L_0x005d:
            androidx.work.WorkInfo$State[] r5 = androidx.work.WorkInfo.State.values()
            int r5 = r5.length
            int[] r5 = new int[r5]
            f1441a = r5
            int[] r5 = f1441a     // Catch:{ NoSuchFieldError -> 0x0070 }
            androidx.work.WorkInfo$State r6 = androidx.work.WorkInfo.State.ENQUEUED     // Catch:{ NoSuchFieldError -> 0x0070 }
            int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0070 }
            r5[r6] = r0     // Catch:{ NoSuchFieldError -> 0x0070 }
        L_0x0070:
            int[] r0 = f1441a     // Catch:{ NoSuchFieldError -> 0x007a }
            androidx.work.WorkInfo$State r5 = androidx.work.WorkInfo.State.RUNNING     // Catch:{ NoSuchFieldError -> 0x007a }
            int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x007a }
            r0[r5] = r1     // Catch:{ NoSuchFieldError -> 0x007a }
        L_0x007a:
            int[] r0 = f1441a     // Catch:{ NoSuchFieldError -> 0x0084 }
            androidx.work.WorkInfo$State r1 = androidx.work.WorkInfo.State.SUCCEEDED     // Catch:{ NoSuchFieldError -> 0x0084 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0084 }
            r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0084 }
        L_0x0084:
            int[] r0 = f1441a     // Catch:{ NoSuchFieldError -> 0x008e }
            androidx.work.WorkInfo$State r1 = androidx.work.WorkInfo.State.FAILED     // Catch:{ NoSuchFieldError -> 0x008e }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x008e }
            r0[r1] = r3     // Catch:{ NoSuchFieldError -> 0x008e }
        L_0x008e:
            int[] r0 = f1441a     // Catch:{ NoSuchFieldError -> 0x0098 }
            androidx.work.WorkInfo$State r1 = androidx.work.WorkInfo.State.BLOCKED     // Catch:{ NoSuchFieldError -> 0x0098 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0098 }
            r0[r1] = r4     // Catch:{ NoSuchFieldError -> 0x0098 }
        L_0x0098:
            int[] r0 = f1441a     // Catch:{ NoSuchFieldError -> 0x00a3 }
            androidx.work.WorkInfo$State r1 = androidx.work.WorkInfo.State.CANCELLED     // Catch:{ NoSuchFieldError -> 0x00a3 }
            int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00a3 }
            r2 = 6
            r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00a3 }
        L_0x00a3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.H.a.c.E.<clinit>():void");
    }
}
