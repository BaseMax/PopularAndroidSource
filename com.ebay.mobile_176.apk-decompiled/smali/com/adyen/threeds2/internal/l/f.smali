.class public final Lcom/adyen/threeds2/internal/l/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(IILcom/adyen/threeds2/internal/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    if-lt p0, p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/adyen/threeds2/internal/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/String;Lcom/adyen/threeds2/internal/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0

    .line 61
    :catch_0
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/a;->a()Lcom/adyen/threeds2/exception/InvalidInputException;

    move-result-object p0

    throw p0
.end method
