package com.farsitel.bazaar.ui.payment;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.o.a.C0290n;
import c.c.a.d.f.a.a.a;
import c.c.a.d.f.b;
import com.farsitel.bazaar.R;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PaymentActivity.kt */
public final class PaymentActivity extends b implements c.c.a.n.s.a {
    public static final a w = new a(null);

    /* compiled from: PaymentActivity.kt */
    public static final class a {
        public a() {
        }

        public final void a(Fragment fragment, String str, String str2) {
            j.b(fragment, "fragment");
            j.b(str, "packageName");
            C0285i Ga = fragment.Ga();
            j.a((Object) Ga, "fragment.requireActivity()");
            Intent intent = new Intent("ir.cafebazaar.intent.action.PAY", Uri.parse("bazaar://pardakht/v1/pay/"));
            Context Ha = fragment.Ha();
            j.a((Object) Ha, "fragment.requireContext()");
            intent.setPackage(Ha.getPackageName());
            intent.putExtra("DEALER_PACKAGE_NAME", "com.farsitel.bazaar");
            intent.putExtra("SKU", str);
            if (str2 != null) {
                intent.putExtra("NAME", str2);
            }
            PendingIntent activity = PendingIntent.getActivity(Ga, -1, intent, 268435456);
            try {
                j.a((Object) activity, "pendingIntent");
                fragment.a(activity.getIntentSender(), 40001, new Intent(), 0, 0, 0, null);
            } catch (IntentSender.SendIntentException e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
        }

        public final void b(Fragment fragment, String str, String str2) {
            j.b(fragment, "fragment");
            j.b(str, "videoId");
            C0285i Ga = fragment.Ga();
            j.a((Object) Ga, "fragment.requireActivity()");
            Intent intent = new Intent("ir.cafebazaar.intent.action.PAY", Uri.parse("bazaar://pardakht/v1/pay/"));
            Context Ha = fragment.Ha();
            j.a((Object) Ha, "fragment.requireContext()");
            intent.setPackage(Ha.getPackageName());
            intent.putExtra("DEALER_PACKAGE_NAME", "com.farsitel.bazaar.video");
            intent.putExtra("SKU", str);
            if (str2 != null) {
                intent.putExtra("NAME", str2);
            }
            PendingIntent activity = PendingIntent.getActivity(Ga, -1, intent, 268435456);
            try {
                j.a((Object) activity, "pendingIntent");
                fragment.a(activity.getIntentSender(), 40001, new Intent(), 0, 0, 0, null);
            } catch (IntentSender.SendIntentException e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final Intent a(Context context, String str, String str2, String str3) {
            j.b(context, "context");
            j.b(str, "dealerPackageName");
            j.b(str2, "sku");
            Intent intent = new Intent("ir.cafebazaar.intent.action.PAY", Uri.parse("bazaar://pardakht/v1/pay/"));
            intent.setPackage(context.getPackageName());
            intent.putExtra("DEALER_PACKAGE_NAME", str);
            intent.putExtra("SKU", str2);
            intent.putExtra("DEV_PAYLOAD", str3);
            return intent;
        }

        public final void a(Fragment fragment) {
            j.b(fragment, "fragment");
            C0285i Ga = fragment.Ga();
            j.a((Object) Ga, "fragment.requireActivity()");
            Intent intent = new Intent("ir.cafebazaar.intent.action.PAY", Uri.parse("bazaar://pardakht/v1/buy_credit/"));
            Context Ha = fragment.Ha();
            j.a((Object) Ha, "fragment.requireContext()");
            intent.setPackage(Ha.getPackageName());
            intent.putExtra("DEALER_PACKAGE_NAME", "com.farsitel.bazaar");
            PendingIntent activity = PendingIntent.getActivity(Ga, -1, intent, 268435456);
            try {
                j.a((Object) activity, "pendingIntent");
                fragment.a(activity.getIntentSender(), 40001, new Intent(), 0, 0, 0, null);
            } catch (IntentSender.SendIntentException e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
        }
    }

    public void a() {
        a.C0076a aVar = c.c.a.d.f.a.a.a.sa;
        String string = getString(R.string.update_dialog_description);
        j.a((Object) string, "getString(R.string.update_dialog_description)");
        c.c.a.d.f.a.a.a a2 = a.C0076a.a(aVar, 0, string, getString(R.string.update), getString(R.string.cancel), 1, null);
        a2.a(new c.c.a.n.s.b(a2, this));
        C0290n r = r();
        j.a((Object) r, "supportFragmentManager");
        a2.a(r);
    }

    public final Intent b(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        Intent intent = new Intent();
        intent.putExtra("INAPP_PURCHASE_DATA", str);
        intent.putExtra("INAPP_DATA_SIGNATURE", str2);
        boolean z = true;
        if (str.length() > 0) {
            if (str2.length() <= 0) {
                z = false;
            }
            if (z) {
                intent.putExtra("RESPONSE_CODE", 0);
            }
        }
        return intent;
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 17432577);
    }

    public void o() {
        a(this, 0, null, 2, null);
    }

    public void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_payment);
        setFinishOnTouchOutside(false);
        Intent intent = new Intent();
        intent.putExtra("RESPONSE_CODE", 1);
        setResult(0, intent);
    }

    public void a(String str, String str2) {
        a(-1, b(str, str2));
    }

    public static /* synthetic */ void a(PaymentActivity paymentActivity, int i2, Intent intent, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            intent = null;
        }
        paymentActivity.a(i2, intent);
    }

    public final void a(int i2, Intent intent) {
        if (intent != null) {
            setResult(i2, intent);
        } else {
            setResult(i2);
        }
        finish();
    }
}
