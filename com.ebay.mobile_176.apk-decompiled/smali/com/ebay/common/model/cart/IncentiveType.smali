.class public abstract Lcom/ebay/common/model/cart/IncentiveType;
.super Ljava/lang/Object;
.source "IncentiveType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isCoupon()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    const-string v1, "coupon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReward()Z
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    const-string/jumbo v1, "reward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVoucher()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/cart/IncentiveType;->type:Ljava/lang/String;

    const-string/jumbo v1, "voucher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
