.class public final Lcom/a/a/a/am;
.super Lcom/a/a/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/v<",
        "Lcom/a/a/a/am;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 13
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/am;->a:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/a/a/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "startCheckout"

    return-object v0
.end method

.method public final putCurrency(Ljava/util/Currency;)Lcom/a/a/a/am;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/a/a/a/am;->b:Lcom/a/a/a/e;

    const-string v1, "currency"

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/a/a/a/am;->d:Lcom/a/a/a/c;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final putItemCount(I)Lcom/a/a/a/am;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/a/a/a/am;->d:Lcom/a/a/a/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "itemCount"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public final putTotalPrice(Ljava/math/BigDecimal;)Lcom/a/a/a/am;
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/a/a/a/am;->b:Lcom/a/a/a/e;

    const-string v1, "totalPrice"

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/a/a/a/am;->d:Lcom/a/a/a/c;

    .line 1057
    sget-object v2, Lcom/a/a/a/am;->a:Ljava/math/BigDecimal;

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-object p0
.end method
