package com.farsitel.bazaar.ui.payment.payment.options;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PaymentGatewayType.kt */
public enum PaymentGatewayType {
    GIFT_CARD("giftcard"),
    USSD("ussd"),
    SHETAB("shetab"),
    CREDIT("credit"),
    NATIVE("native"),
    SILENT("silent"),
    CARRIER("carrier");
    
    public static final a Companion = null;
    public final String value;

    /* compiled from: PaymentGatewayType.kt */
    public static final class a {
        public a() {
        }

        public final PaymentGatewayType a(String str) {
            PaymentGatewayType paymentGatewayType;
            j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
            PaymentGatewayType[] values = PaymentGatewayType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    paymentGatewayType = null;
                    break;
                }
                paymentGatewayType = values[i2];
                if (j.a((Object) paymentGatewayType.f(), (Object) str)) {
                    break;
                }
                i2++;
            }
            if (paymentGatewayType != null) {
                return paymentGatewayType;
            }
            throw new RuntimeException("Unknown payment gateway type: " + str);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        Companion = new a(null);
    }

    /* access modifiers changed from: public */
    PaymentGatewayType(String str) {
        this.value = str;
    }

    public final String f() {
        return this.value;
    }
}
