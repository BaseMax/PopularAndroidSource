package c.c.a.e.d.m.b.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;

/* compiled from: GetTransactionsResponseDto.kt */
public final class q {
    @c("amountString")
    public final String amountString;
    @c("dateString")
    public final String dateString;
    @c("dateTimeStamp")
    public final long dateTimeStamp;
    @c("description")
    public final String description;
    @c("isIncome")
    public final boolean isIncome;
    @c("isRefunded")
    public final boolean isRefunded;
    @c("timeString")
    public final String timeString;
    @c("token")
    public final String token;

    public final TransactionItem a() {
        TransactionItem transactionItem = new TransactionItem(this.dateString + ' ' + this.timeString, this.dateTimeStamp, this.amountString, this.description, this.token, this.isIncome, this.isRefunded);
        return transactionItem;
    }
}
