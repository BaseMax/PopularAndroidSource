package com.raizlabs.android.dbflow.annotation;

public enum ConflictAction {
    NONE,
    ROLLBACK,
    ABORT,
    FAIL,
    IGNORE,
    REPLACE;

    /* renamed from: com.raizlabs.android.dbflow.annotation.ConflictAction$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5091a = null;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                com.raizlabs.android.dbflow.annotation.ConflictAction[] r0 = com.raizlabs.android.dbflow.annotation.ConflictAction.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5091a = r0
                int[] r0 = f5091a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.raizlabs.android.dbflow.annotation.ConflictAction r1 = com.raizlabs.android.dbflow.annotation.ConflictAction.ROLLBACK     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5091a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.raizlabs.android.dbflow.annotation.ConflictAction r1 = com.raizlabs.android.dbflow.annotation.ConflictAction.ABORT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5091a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.raizlabs.android.dbflow.annotation.ConflictAction r1 = com.raizlabs.android.dbflow.annotation.ConflictAction.FAIL     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5091a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.raizlabs.android.dbflow.annotation.ConflictAction r1 = com.raizlabs.android.dbflow.annotation.ConflictAction.IGNORE     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = f5091a     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.raizlabs.android.dbflow.annotation.ConflictAction r1 = com.raizlabs.android.dbflow.annotation.ConflictAction.REPLACE     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.raizlabs.android.dbflow.annotation.ConflictAction.AnonymousClass1.<clinit>():void");
        }
    }

    public static int getSQLiteDatabaseAlgorithmInt(ConflictAction conflictAction) {
        int i = AnonymousClass1.f5091a[conflictAction.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        i2 = 5;
                        if (i != 5) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i2;
    }
}
