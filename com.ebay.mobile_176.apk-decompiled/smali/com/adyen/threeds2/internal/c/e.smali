.class final Lcom/adyen/threeds2/internal/c/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/adyen/threeds2/internal/c/a;)Lcom/adyen/threeds2/internal/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/adyen/threeds2/internal/c/a;->V1_1:Lcom/adyen/threeds2/internal/c/a;

    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/c/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    new-instance p0, Lcom/adyen/threeds2/internal/c/d;

    invoke-direct {p0}, Lcom/adyen/threeds2/internal/c/d;-><init>()V

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lcom/adyen/threeds2/internal/e/c;->DEVICE_DATA_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method
