package com.farsitel.bazaar.common.model.transaction;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: TransactionItem.kt */
public final class TransactionItem implements RecyclerData {
    public final String amountString;
    public final long dateTimeStamp;
    public final String dateTimeString;
    public final String description;
    public final boolean isIncome;
    public final boolean isRefunded;
    public final String token;
    public final int viewType = TransactionItemViewType.TRANSACTION_ITEM.ordinal();

    public TransactionItem(String str, long j2, String str2, String str3, String str4, boolean z, boolean z2) {
        j.b(str, "dateTimeString");
        j.b(str2, "amountString");
        j.b(str3, "description");
        j.b(str4, "token");
        this.dateTimeString = str;
        this.dateTimeStamp = j2;
        this.amountString = str2;
        this.description = str3;
        this.token = str4;
        this.isIncome = z;
        this.isRefunded = z2;
    }

    public final String getAmountString() {
        return this.amountString;
    }

    public final long getDateTimeStamp() {
        return this.dateTimeStamp;
    }

    public final String getDateTimeString() {
        return this.dateTimeString;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getToken() {
        return this.token;
    }

    public int getViewType() {
        return this.viewType;
    }

    public final boolean isIncome() {
        return this.isIncome;
    }

    public final boolean isRefunded() {
        return this.isRefunded;
    }
}
