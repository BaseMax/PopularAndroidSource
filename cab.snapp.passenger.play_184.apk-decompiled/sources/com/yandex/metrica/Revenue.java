package com.yandex.metrica;

import com.yandex.metrica.impl.ob.ov;
import com.yandex.metrica.impl.ob.ow;
import com.yandex.metrica.impl.ob.pa;
import java.util.Currency;

public class Revenue {
    public final Currency currency;
    public final String payload;
    public final double price;
    public final String productID;
    public final Integer quantity;
    public final Receipt receipt;

    public static class Builder {
        private static final pa<Currency> g = new ow(new ov("revenue currency"));

        /* renamed from: a  reason: collision with root package name */
        double f5632a;

        /* renamed from: b  reason: collision with root package name */
        Currency f5633b;
        Integer c;
        String d;
        String e;
        Receipt f;

        Builder(double d2, Currency currency) {
            g.a(currency);
            this.f5632a = d2;
            this.f5633b = currency;
        }

        public Builder withQuantity(Integer num) {
            this.c = num;
            return this;
        }

        public Builder withProductID(String str) {
            this.d = str;
            return this;
        }

        public Builder withPayload(String str) {
            this.e = str;
            return this;
        }

        public Builder withReceipt(Receipt receipt) {
            this.f = receipt;
            return this;
        }

        public Revenue build() {
            return new Revenue(this, (byte) 0);
        }
    }

    public static class Receipt {
        public final String data;
        public final String signature;

        public static class Builder {
            /* access modifiers changed from: private */

            /* renamed from: a  reason: collision with root package name */
            public String f5634a;
            /* access modifiers changed from: private */

            /* renamed from: b  reason: collision with root package name */
            public String f5635b;

            Builder() {
            }

            public Builder withData(String str) {
                this.f5634a = str;
                return this;
            }

            public Builder withSignature(String str) {
                this.f5635b = str;
                return this;
            }

            public Receipt build() {
                return new Receipt(this, (byte) 0);
            }
        }

        /* synthetic */ Receipt(Builder builder, byte b2) {
            this(builder);
        }

        private Receipt(Builder builder) {
            this.data = builder.f5634a;
            this.signature = builder.f5635b;
        }

        public static Builder newBuilder() {
            return new Builder();
        }
    }

    /* synthetic */ Revenue(Builder builder, byte b2) {
        this(builder);
    }

    private Revenue(Builder builder) {
        this.price = builder.f5632a;
        this.currency = builder.f5633b;
        this.quantity = builder.c;
        this.productID = builder.d;
        this.payload = builder.e;
        this.receipt = builder.f;
    }

    public static Builder newBuilder(double d, Currency currency2) {
        return new Builder(d, currency2);
    }
}
