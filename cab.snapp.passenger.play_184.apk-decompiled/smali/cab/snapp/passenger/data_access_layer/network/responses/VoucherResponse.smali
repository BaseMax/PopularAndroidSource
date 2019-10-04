.class public Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private amount:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;->amount:D

    return-wide v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;->amount:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VoucherResponse{amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
