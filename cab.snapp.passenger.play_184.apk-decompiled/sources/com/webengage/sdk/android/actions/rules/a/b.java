package com.webengage.sdk.android.actions.rules.a;

class b implements a {
    b() {
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:11|12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0024, code lost:
        return java.lang.Double.valueOf(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0040, code lost:
        r4 = r4.substring(1, r4.length() - 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0049, code lost:
        return r4;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0020 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = "null"
            boolean r0 = r4.equalsIgnoreCase(r0)
            if (r0 == 0) goto L_0x000a
            r4 = 0
            return r4
        L_0x000a:
            java.lang.String r0 = "true"
            boolean r0 = r4.equalsIgnoreCase(r0)
            if (r0 != 0) goto L_0x004a
            java.lang.String r0 = "false"
            boolean r0 = r4.equalsIgnoreCase(r0)
            if (r0 == 0) goto L_0x001b
            goto L_0x004a
        L_0x001b:
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch:{ NumberFormatException -> 0x0020 }
            return r4
        L_0x0020:
            java.lang.Double r4 = java.lang.Double.valueOf(r4)     // Catch:{ NumberFormatException -> 0x0025 }
            return r4
        L_0x0025:
            boolean r0 = r4.isEmpty()
            if (r0 != 0) goto L_0x0049
            r0 = 0
            char r0 = r4.charAt(r0)
            r1 = 34
            if (r0 != r1) goto L_0x0049
            int r0 = r4.length()
            r2 = 1
            int r0 = r0 - r2
            char r0 = r4.charAt(r0)
            if (r0 != r1) goto L_0x0049
            int r0 = r4.length()
            int r0 = r0 - r2
            java.lang.String r4 = r4.substring(r2, r0)
        L_0x0049:
            return r4
        L_0x004a:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.a.b.a(java.lang.String):java.lang.Object");
    }
}
