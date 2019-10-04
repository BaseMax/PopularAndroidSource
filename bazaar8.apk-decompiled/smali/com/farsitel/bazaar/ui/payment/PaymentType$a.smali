.class public final Lcom/farsitel/bazaar/ui/payment/PaymentType$a;
.super Ljava/lang/Object;
.source "PaymentType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/payment/PaymentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/payment/PaymentType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/payment/PaymentType;
    .locals 4

    if-nez p1, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "Credit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v0, "Subscription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v0, "pay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->SUBSCRIPTION:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    goto :goto_4

    :sswitch_4
    const-string v0, "P"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_6
    const-string v0, "buy_credit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :goto_1
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    goto :goto_4

    :sswitch_7
    const-string v0, "Purchasable"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :goto_2
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->PURCHASABLE:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    goto :goto_4

    .line 7
    :cond_1
    :goto_3
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal payment type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->PURCHASABLE:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    :goto_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76d95ce2 -> :sswitch_7
        -0x4e58192e -> :sswitch_6
        0x43 -> :sswitch_5
        0x50 -> :sswitch_4
        0x53 -> :sswitch_3
        0x1b0a8 -> :sswitch_2
        0x1e21ad3d -> :sswitch_1
        0x78ca9719 -> :sswitch_0
    .end sparse-switch
.end method
