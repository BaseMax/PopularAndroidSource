.class public final Lcom/a/a/a/w;
.super Lcom/a/a/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/v<",
        "Lcom/a/a/a/w;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 29
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/w;->a:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/a/a/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "purchase"

    return-object v0
.end method

.method public final putCurrency(Ljava/util/Currency;)Lcom/a/a/a/w;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/a/a/a/w;->b:Lcom/a/a/a/e;

    const-string v1, "currency"

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/a/a/a/w;->d:Lcom/a/a/a/c;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final putItemId(Ljava/lang/String;)Lcom/a/a/a/w;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/a/a/a/w;->d:Lcom/a/a/a/c;

    const-string v1, "itemId"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putItemName(Ljava/lang/String;)Lcom/a/a/a/w;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/a/a/a/w;->d:Lcom/a/a/a/c;

    const-string v1, "itemName"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putItemPrice(Ljava/math/BigDecimal;)Lcom/a/a/a/w;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/a/a/a/w;->b:Lcom/a/a/a/e;

    const-string v1, "itemPrice"

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/a/a/a/w;->d:Lcom/a/a/a/c;

    .line 1110
    sget-object v2, Lcom/a/a/a/w;->a:Ljava/math/BigDecimal;

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-object p0
.end method

.method public final putItemType(Ljava/lang/String;)Lcom/a/a/a/w;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/a/a/a/w;->d:Lcom/a/a/a/c;

    const-string v1, "itemType"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putSuccess(Z)Lcom/a/a/a/w;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/a/a/a/w;->d:Lcom/a/a/a/c;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
