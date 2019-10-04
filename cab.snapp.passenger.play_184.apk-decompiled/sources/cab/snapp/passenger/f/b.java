package cab.snapp.passenger.f;

import cab.snapp.deeplink.models.a;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private a f537a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f538b;

    public final synchronized void setDeepLink(a aVar) {
        if (aVar != null) {
            this.f537a = aVar;
            this.f538b = true;
        }
    }

    public final synchronized a getDeepLink() {
        return this.f537a;
    }

    public final void setHasPendingDeepLink(boolean z) {
        this.f538b = z;
    }

    public final boolean hasPendingDeepLink() {
        return this.f538b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:68:0x00ed, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void handleDeepLink(cab.snapp.arch.protocol.BaseRouter r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f538b     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            cab.snapp.deeplink.models.a r0 = r4.f537a     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            cab.snapp.deeplink.models.a r0 = r4.f537a     // Catch:{ all -> 0x00ee }
            cab.snapp.deeplink.models.types.Host r0 = r0.getHost()     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            cab.snapp.deeplink.models.a r0 = r4.f537a     // Catch:{ all -> 0x00ee }
            cab.snapp.deeplink.models.types.Host r0 = r0.getHost()     // Catch:{ all -> 0x00ee }
            cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Open     // Catch:{ all -> 0x00ee }
            boolean r0 = r0.equals(r1)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            cab.snapp.deeplink.models.a r0 = r4.f537a     // Catch:{ all -> 0x00ee }
            cab.snapp.deeplink.models.c r0 = r0.getPath1()     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            cab.snapp.deeplink.models.a r0 = r4.f537a     // Catch:{ all -> 0x00ee }
            cab.snapp.deeplink.models.c r0 = r0.getPath1()     // Catch:{ all -> 0x00ee }
            java.lang.String r0 = r0.getValue()     // Catch:{ all -> 0x00ee }
            java.lang.String r1 = "main"
            boolean r0 = r0.equals(r1)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            boolean r0 = r5 instanceof cab.snapp.passenger.units.main.f     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00ec
            cab.snapp.deeplink.models.a r0 = r4.f537a     // Catch:{ all -> 0x00ee }
            cab.snapp.deeplink.models.c r0 = r0.getPath2()     // Catch:{ all -> 0x00ee }
            java.lang.String r0 = r0.getValue()     // Catch:{ all -> 0x00ee }
            r1 = -1
            int r2 = r0.hashCode()     // Catch:{ all -> 0x00ee }
            r3 = 0
            switch(r2) {
                case -1834318150: goto L_0x00ad;
                case -722568291: goto L_0x00a3;
                case -657924163: goto L_0x0099;
                case 70791782: goto L_0x008f;
                case 100344454: goto L_0x0085;
                case 456681178: goto L_0x007a;
                case 1050790300: goto L_0x0070;
                case 1115434428: goto L_0x0066;
                case 1434631203: goto L_0x005c;
                case 1499275331: goto L_0x0052;
                default: goto L_0x0050;
            }     // Catch:{ all -> 0x00ee }
        L_0x0050:
            goto L_0x00b7
        L_0x0052:
            java.lang.String r2 = "Settings"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 1
            goto L_0x00b7
        L_0x005c:
            java.lang.String r2 = "settings"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 0
            goto L_0x00b7
        L_0x0066:
            java.lang.String r2 = "Favorite"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 7
            goto L_0x00b7
        L_0x0070:
            java.lang.String r2 = "favorite"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 6
            goto L_0x00b7
        L_0x007a:
            java.lang.String r2 = "addcredit"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 8
            goto L_0x00b7
        L_0x0085:
            java.lang.String r2 = "inbox"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 4
            goto L_0x00b7
        L_0x008f:
            java.lang.String r2 = "Inbox"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 5
            goto L_0x00b7
        L_0x0099:
            java.lang.String r2 = "Referral"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 3
            goto L_0x00b7
        L_0x00a3:
            java.lang.String r2 = "referral"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 2
            goto L_0x00b7
        L_0x00ad:
            java.lang.String r2 = "Addcredit"
            boolean r0 = r0.equals(r2)     // Catch:{ all -> 0x00ee }
            if (r0 == 0) goto L_0x00b7
            r1 = 9
        L_0x00b7:
            switch(r1) {
                case 0: goto L_0x00e2;
                case 1: goto L_0x00e2;
                case 2: goto L_0x00d8;
                case 3: goto L_0x00d8;
                case 4: goto L_0x00ce;
                case 5: goto L_0x00ce;
                case 6: goto L_0x00c4;
                case 7: goto L_0x00c4;
                case 8: goto L_0x00bb;
                case 9: goto L_0x00bb;
                default: goto L_0x00ba;
            }     // Catch:{ all -> 0x00ee }
        L_0x00ba:
            goto L_0x00ec
        L_0x00bb:
            cab.snapp.passenger.units.main.f r5 = (cab.snapp.passenger.units.main.f) r5     // Catch:{ all -> 0x00ee }
            r5.routeToAddCreditDialog()     // Catch:{ all -> 0x00ee }
            r4.setHasPendingDeepLink(r3)     // Catch:{ all -> 0x00ee }
            goto L_0x00ec
        L_0x00c4:
            cab.snapp.passenger.units.main.f r5 = (cab.snapp.passenger.units.main.f) r5     // Catch:{ all -> 0x00ee }
            r5.routeToFavoriteUnit()     // Catch:{ all -> 0x00ee }
            r4.setHasPendingDeepLink(r3)     // Catch:{ all -> 0x00ee }
            monitor-exit(r4)
            return
        L_0x00ce:
            cab.snapp.passenger.units.main.f r5 = (cab.snapp.passenger.units.main.f) r5     // Catch:{ all -> 0x00ee }
            r5.routeToInbox()     // Catch:{ all -> 0x00ee }
            r4.setHasPendingDeepLink(r3)     // Catch:{ all -> 0x00ee }
            monitor-exit(r4)
            return
        L_0x00d8:
            cab.snapp.passenger.units.main.f r5 = (cab.snapp.passenger.units.main.f) r5     // Catch:{ all -> 0x00ee }
            r5.routeToReferralUnit()     // Catch:{ all -> 0x00ee }
            r4.setHasPendingDeepLink(r3)     // Catch:{ all -> 0x00ee }
            monitor-exit(r4)
            return
        L_0x00e2:
            cab.snapp.passenger.units.main.f r5 = (cab.snapp.passenger.units.main.f) r5     // Catch:{ all -> 0x00ee }
            r5.routeToSettingUnit()     // Catch:{ all -> 0x00ee }
            r4.setHasPendingDeepLink(r3)     // Catch:{ all -> 0x00ee }
            monitor-exit(r4)
            return
        L_0x00ec:
            monitor-exit(r4)
            return
        L_0x00ee:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.f.b.handleDeepLink(cab.snapp.arch.protocol.BaseRouter):void");
    }
}
