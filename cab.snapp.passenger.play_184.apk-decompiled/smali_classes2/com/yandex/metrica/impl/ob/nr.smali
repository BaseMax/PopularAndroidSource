.class public final Lcom/yandex/metrica/impl/ob/nr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)I
    .locals 3

    .line 47
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 48
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long p0, p0, v1

    .line 50
    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static a()J
    .locals 2

    .line 1029
    sget-object v0, Lcom/yandex/metrica/impl/ob/nn$a;->a:Lcom/yandex/metrica/impl/ob/nn;

    .line 39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nn;->b()J

    move-result-wide v0

    return-wide v0
.end method
