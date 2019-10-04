package c.c.a.n.s.d;

import com.farsitel.bazaar.ui.payment.PaymentType;
import com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler;
import com.farsitel.bazaar.ui.payment.payment.options.PaymentGatewayType;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6866a = new int[PaymentType.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f6867b = new int[PaymentGatewayType.values().length];

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ int[] f6868c = new int[PaymentGatewayHandler.PaymentState.values().length];

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int[] f6869d = new int[PaymentType.values().length];

    static {
        f6866a[PaymentType.CREDIT.ordinal()] = 1;
        f6866a[PaymentType.PURCHASABLE.ordinal()] = 2;
        f6866a[PaymentType.SUBSCRIPTION.ordinal()] = 3;
        f6867b[PaymentGatewayType.CREDIT.ordinal()] = 1;
        f6868c[PaymentGatewayHandler.PaymentState.INITIATED.ordinal()] = 1;
        f6869d[PaymentType.CREDIT.ordinal()] = 1;
        f6869d[PaymentType.PURCHASABLE.ordinal()] = 2;
        f6869d[PaymentType.SUBSCRIPTION.ordinal()] = 3;
    }
}
