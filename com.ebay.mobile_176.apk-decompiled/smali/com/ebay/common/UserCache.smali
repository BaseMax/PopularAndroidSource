.class public final Lcom/ebay/common/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/UserCache$PaidStatusAndTime;,
        Lcom/ebay/common/UserCache$TUpdateUserDetails;,
        Lcom/ebay/common/UserCache$Internal;
    }
.end annotation


# instance fields
.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final i:Lcom/ebay/common/UserCache$Internal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/ebay/common/UserCache;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 41
    invoke-static {}, Lcom/ebay/common/UserCache$Internal;->get()Lcom/ebay/common/UserCache$Internal;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/shell/app/BaseActivity;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ebay/common/UserCache;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static clearDetailsForLogout()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/ebay/common/UserCache$Internal;->getIfExists()Lcom/ebay/common/UserCache$Internal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/ebay/common/UserCache$Internal;->clearAll()V

    :cond_0
    return-void
.end method

.method private getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ebay/common/UserCache;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    return-object v0
.end method

.method private getTradingApi()Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/ebay/common/UserCache;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getUserDetails()Lcom/ebay/common/model/UserDetail;
    .locals 1

    .line 89
    invoke-static {}, Lcom/ebay/common/UserCache$Internal;->getIfExists()Lcom/ebay/common/UserCache$Internal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/ebay/common/UserCache$Internal;->getUserDetails()Lcom/ebay/common/model/UserDetail;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addToLeftFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->addToLeftFeedback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addToPaidStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    new-instance v1, Lcom/ebay/common/UserCache$PaidStatusAndTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p3, p4, v2}, Lcom/ebay/common/UserCache$PaidStatusAndTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ebay/common/UserCache$Internal;->addToPaidStatus(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/UserCache$PaidStatusAndTime;)V

    .line 114
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/ebay/nautilus/domain/content/ServiceContentOverride;->setPaidStatus(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final clearLeftFeedback()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0}, Lcom/ebay/common/UserCache$Internal;->clearLeftFeedback()V

    return-void
.end method

.method public final getPaidStatusAndTime(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/UserCache$PaidStatusAndTime;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->getPaidStatusAndTime(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/UserCache$PaidStatusAndTime;

    move-result-object p1

    return-object p1
.end method

.method public final hasLeftFeedback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->hasLeftFeedback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isPriceRevealed(Ljava/lang/String;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1}, Lcom/ebay/common/UserCache$Internal;->isPriceRevealed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isShipped(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->isShipped(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final refreshAll()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final refreshUserDetails()V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/ebay/common/UserCache;->getTradingApi()Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    iget-object v2, p0, Lcom/ebay/common/UserCache;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-virtual {v1, v2, v0}, Lcom/ebay/common/UserCache$Internal;->refreshUserDetails(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V

    :cond_0
    return-void
.end method

.method public final setPriceRevealed(Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1}, Lcom/ebay/common/UserCache$Internal;->setPriceRevealed(Ljava/lang/String;)V

    return-void
.end method

.method public final setShipped(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ebay/common/UserCache$Internal;->setShipped(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setUserDetails(Lcom/ebay/common/model/UserDetail;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ebay/common/UserCache;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-virtual {v0, p1}, Lcom/ebay/common/UserCache$Internal;->setUserDetails(Lcom/ebay/common/model/UserDetail;)V

    return-void
.end method

.method public final signIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
