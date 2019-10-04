package c.c.a.e.d.m.b.b;

import c.c.a.e.d.m.b.b.f;
import c.e.d.a.c;
import com.farsitel.bazaar.data.feature.payment.InitiatePaymentData;

/* compiled from: InitiatePaymentResponseDto.kt */
public final class l {
    @c("invoiceToken")
    public final String invoiceToken;
    @c("silentGatewayData")
    public final f.a silentGatewayData;
    @c("webBasedGatewayData")
    public final f.b webBasedGatewayData;

    public final InitiatePaymentData a() {
        return new InitiatePaymentData(this.invoiceToken, this.webBasedGatewayData, this.silentGatewayData);
    }
}
