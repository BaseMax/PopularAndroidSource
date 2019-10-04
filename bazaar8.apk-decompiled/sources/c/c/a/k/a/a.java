package c.c.a.k.a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import c.a.a.a.a;
import c.c.a.b.f.a.c;
import c.c.a.e.d.m.d;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.payment.iab.InAppBillingService;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import h.f.b.f;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: InAppBillingServiceFunctions.kt */
public final class a extends a.C0051a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0086a f6071a = new C0086a(null);

    /* renamed from: b  reason: collision with root package name */
    public final Context f6072b = this.f6073c.getApplicationContext();

    /* renamed from: c  reason: collision with root package name */
    public final Context f6073c;

    /* renamed from: d  reason: collision with root package name */
    public final c.c.a.e.d.a.a f6074d;

    /* renamed from: e  reason: collision with root package name */
    public final d f6075e;

    /* renamed from: f  reason: collision with root package name */
    public final c f6076f;

    /* renamed from: c.c.a.k.a.a$a  reason: collision with other inner class name */
    /* compiled from: InAppBillingServiceFunctions.kt */
    public static final class C0086a {
        public C0086a() {
        }

        public /* synthetic */ C0086a(f fVar) {
            this();
        }
    }

    public a(Context context, c.c.a.e.d.a.a aVar, d dVar, c cVar) {
        j.b(context, "context");
        j.b(aVar, "accountRepository");
        j.b(dVar, "paymentRepository");
        j.b(cVar, "pardakhtNotificationManager");
        this.f6073c = context;
        this.f6074d = aVar;
        this.f6075e = dVar;
        this.f6076f = cVar;
    }

    public int a(int i2, String str, String str2) {
        j.b(str, "packageName");
        j.b(str2, SessionEventTransform.TYPE_KEY);
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        c.c.a.c.c.a.a(aVar, "InAppBillingServiceFunc :: isBillingSupported :: apiVersion=" + i2 + ", packageName=" + str + ", type=" + str2, null, null, 6, null);
        return i2 < 3 ? 3 : 0;
    }

    public int b(int i2, String str, String str2) {
        j.b(str, "packageName");
        j.b(str2, "purchaseToken");
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        c.c.a.c.c.a.a(aVar, "InAppBillingServiceFunc :: consumePurchase :: apiVersion= " + i2 + ", " + "packageName= " + str + ", purchaseToken=" + str2, null, null, 6, null);
        if (j.a((Object) Looper.myLooper(), (Object) Looper.getMainLooper()) || !a(str, new Bundle()) || !this.f6074d.u()) {
            return 5;
        }
        int i3 = 6;
        try {
            if (((Boolean) C1101f.a(null, new InAppBillingServiceFunctions$consumePurchase$1(this, str, str2, null), 1, null)).booleanValue()) {
                i3 = 0;
            }
            return i3;
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.a(new Throwable("InAppBillingServiceFunc :: consumePurchase :: remote call failed:", e2));
            return 6;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x008e A[Catch:{ Exception -> 0x00b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00a5 A[Catch:{ Exception -> 0x00b8 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.os.Bundle a(int r12, java.lang.String r13, java.lang.String r14, android.os.Bundle r15) {
        /*
            r11 = this;
            java.lang.String r0 = "packageName"
            h.f.b.j.b(r13, r0)
            java.lang.String r0 = "type"
            h.f.b.j.b(r14, r0)
            java.lang.String r0 = "skusBundle"
            h.f.b.j.b(r15, r0)
            c.c.a.c.c.a r1 = c.c.a.c.c.a.f4699b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "InAppBillingServiceFunc :: getSkuDetails :: apiVersion="
            r0.append(r2)
            r0.append(r12)
            java.lang.String r2 = ", packageName="
            r0.append(r2)
            r0.append(r13)
            java.lang.String r2 = ", type="
            r0.append(r2)
            r0.append(r14)
            java.lang.String r2 = r0.toString()
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            c.c.a.c.c.a.a(r1, r2, r3, r4, r5, r6)
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            r1 = 3
            java.lang.String r2 = "RESPONSE_CODE"
            if (r12 >= r1) goto L_0x0047
            r0.putInt(r2, r1)
            return r0
        L_0x0047:
            boolean r1 = r11.a(r13, r0)
            if (r1 != 0) goto L_0x004e
            return r0
        L_0x004e:
            android.os.Looper r1 = android.os.Looper.myLooper()
            android.os.Looper r3 = android.os.Looper.getMainLooper()
            boolean r1 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r3)
            if (r1 == 0) goto L_0x0061
            r12 = 5
            r0.putInt(r2, r12)
            return r0
        L_0x0061:
            java.lang.String r1 = "ITEM_ID_LIST"
            java.util.ArrayList r15 = r15.getStringArrayList(r1)
            r1 = 0
            if (r15 == 0) goto L_0x0076
            java.util.List r15 = h.a.u.h(r15)
            if (r15 == 0) goto L_0x0076
            java.util.List r15 = h.a.u.f(r15)
            r8 = r15
            goto L_0x0077
        L_0x0076:
            r8 = r1
        L_0x0077:
            r15 = 6
            com.farsitel.bazaar.payment.iab.InAppBillingServiceFunctions$getSkuDetails$1 r10 = new com.farsitel.bazaar.payment.iab.InAppBillingServiceFunctions$getSkuDetails$1     // Catch:{ Exception -> 0x00b8 }
            r9 = 0
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r3.<init>(r4, r5, r6, r7, r8, r9)     // Catch:{ Exception -> 0x00b8 }
            r12 = 1
            java.lang.Object r12 = i.a.C1101f.a(r1, r10, r12, r1)     // Catch:{ Exception -> 0x00b8 }
            com.farsitel.bazaar.data.entity.Either r12 = (com.farsitel.bazaar.data.entity.Either) r12     // Catch:{ Exception -> 0x00b8 }
            boolean r13 = r12 instanceof com.farsitel.bazaar.data.entity.Either.Success     // Catch:{ Exception -> 0x00b8 }
            if (r13 == 0) goto L_0x00a5
            com.farsitel.bazaar.data.entity.Either$Success r12 = (com.farsitel.bazaar.data.entity.Either.Success) r12     // Catch:{ Exception -> 0x00b8 }
            java.lang.Object r12 = r12.getValue()     // Catch:{ Exception -> 0x00b8 }
            java.util.List r12 = (java.util.List) r12     // Catch:{ Exception -> 0x00b8 }
            java.lang.String r13 = "DETAILS_LIST"
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch:{ Exception -> 0x00b8 }
            r14.<init>(r12)     // Catch:{ Exception -> 0x00b8 }
            r0.putStringArrayList(r13, r14)     // Catch:{ Exception -> 0x00b8 }
            r12 = 0
            r0.putInt(r2, r12)     // Catch:{ Exception -> 0x00b8 }
            goto L_0x00c8
        L_0x00a5:
            boolean r13 = r12 instanceof com.farsitel.bazaar.data.entity.Either.Failure     // Catch:{ Exception -> 0x00b8 }
            if (r13 == 0) goto L_0x00b2
            com.farsitel.bazaar.data.entity.Either$Failure r12 = (com.farsitel.bazaar.data.entity.Either.Failure) r12     // Catch:{ Exception -> 0x00b8 }
            r12.getError()     // Catch:{ Exception -> 0x00b8 }
            r0.putInt(r2, r15)     // Catch:{ Exception -> 0x00b8 }
            goto L_0x00c8
        L_0x00b2:
            kotlin.NoWhenBranchMatchedException r12 = new kotlin.NoWhenBranchMatchedException     // Catch:{ Exception -> 0x00b8 }
            r12.<init>()     // Catch:{ Exception -> 0x00b8 }
            throw r12     // Catch:{ Exception -> 0x00b8 }
        L_0x00b8:
            r12 = move-exception
            c.c.a.c.c.a r13 = c.c.a.c.c.a.f4699b
            java.lang.Throwable r14 = new java.lang.Throwable
            java.lang.String r1 = "InAppBillingServiceFunc :: getSkuDetails :: error"
            r14.<init>(r1, r12)
            r13.a((java.lang.Throwable) r14)
            r0.putInt(r2, r15)
        L_0x00c8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.k.a.a.a(int, java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    public Bundle a(int i2, String str, String str2, String str3, String str4) {
        j.b(str, "packageName");
        j.b(str2, "sku");
        j.b(str3, SessionEventTransform.TYPE_KEY);
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        c.c.a.c.c.a.a(aVar, "InAppBillingServiceFunc :: getBuyIntent :: apiVersion=" + i2 + ", " + "packageName=" + str + ", type=" + str3 + ", developerPayload=" + str4, null, null, 6, null);
        Bundle bundle = new Bundle();
        if (i2 < 3 || (!j.a((Object) "inapp", (Object) str3) && !j.a((Object) "subs", (Object) str3))) {
            bundle.putInt("RESPONSE_CODE", 3);
        } else if (!a(str, bundle)) {
            return bundle;
        } else {
            bundle.putInt("RESPONSE_CODE", 0);
            PaymentActivity.a aVar2 = PaymentActivity.w;
            Context context = this.f6072b;
            j.a((Object) context, "appContext");
            bundle.putParcelable("BUY_INTENT", PendingIntent.getActivity(this.f6073c, 1, aVar2.a(context, str, str2, str4), 268435456));
        }
        return bundle;
    }

    public Bundle a(int i2, String str, String str2, String str3) {
        int i3 = i2;
        String str4 = str;
        String str5 = str2;
        j.b(str4, "packageName");
        j.b(str5, SessionEventTransform.TYPE_KEY);
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        c.c.a.c.c.a.a(aVar, "InAppBillingServiceFunc :: getPurchases :: apiVersion=" + i3 + ", " + "packageName=" + str4 + ", type=" + str5 + ", continuationToken= " + str3, null, null, 6, null);
        Bundle bundle = new Bundle();
        if (j.a((Object) Looper.myLooper(), (Object) Looper.getMainLooper())) {
            bundle.putInt("RESPONSE_CODE", 5);
        } else if (i3 < 3 || (!j.a((Object) "inapp", (Object) str5) && !j.a((Object) "subs", (Object) str5))) {
            bundle.putInt("RESPONSE_CODE", 3);
        } else if (!a(str4, bundle)) {
            return bundle;
        } else {
            if (this.f6074d.u()) {
                try {
                    d.a aVar2 = (d.a) C1101f.a(null, new InAppBillingServiceFunctions$getPurchases$1(this, str4, str5, null), 1, null);
                    bundle.putInt("RESPONSE_CODE", 0);
                    bundle.putStringArrayList("INAPP_PURCHASE_ITEM_LIST", aVar2.b());
                    bundle.putStringArrayList("INAPP_PURCHASE_DATA_LIST", aVar2.a());
                    bundle.putStringArrayList("INAPP_DATA_SIGNATURE_LIST", aVar2.c());
                    c.c.a.c.c.a aVar3 = c.c.a.c.c.a.f4699b;
                    c.c.a.c.c.a.a(aVar3, "InAppBillingServiceFunc :: getPurchases :: filled bundle=" + bundle, null, null, 6, null);
                } catch (Exception e2) {
                    Exception exc = e2;
                    bundle.putInt("RESPONSE_CODE", 6);
                    c.c.a.c.c.a aVar4 = c.c.a.c.c.a.f4699b;
                    c.c.a.c.c.a.a(aVar4, "InAppBillingServiceFunc :: getPurchases(phone= " + this.f6074d.k() + ", " + "fetchTimestamp= " + -1 + ") :: json parse error", exc, null, 4, null);
                }
            } else {
                bundle.putInt("RESPONSE_CODE", 6);
                this.f6076f.a(str4);
            }
        }
        return bundle;
    }

    public final boolean a(String str, Bundle bundle) {
        if (str == null) {
            c.c.a.c.c.a.a(c.c.a.c.c.a.f4699b, "InAppBillingServiceFunc :: securityCheck :: packageName=null", null, null, 6, null);
            bundle.putInt("RESPONSE_CODE", 5);
            return false;
        }
        int callingUid = Binder.getCallingUid();
        Context context = this.f6072b;
        j.a((Object) context, "appContext");
        String nameForUid = context.getPackageManager().getNameForUid(callingUid);
        if (InAppBillingService.f12294b.a()) {
            c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
            c.c.a.c.c.a.a(aVar, "InAppBillingServiceFunc :: securityCheck :: " + "callingUid= " + callingUid + ", extractedPackageName= " + nameForUid, null, null, 6, null);
        }
        if (!(!j.a((Object) str, (Object) nameForUid)) || !(!j.a((Object) "com.farsitel.bazaar", (Object) nameForUid))) {
            return true;
        }
        c.c.a.c.c.a.a(c.c.a.c.c.a.f4699b, "InAppBillingServiceFunc :: getSkuDetails :: packageName forging", null, null, 6, null);
        bundle.putInt("RESPONSE_CODE", 5);
        return false;
    }
}
