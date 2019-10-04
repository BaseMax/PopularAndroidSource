.class public Lcom/ebay/mobile/MagnesUpdateShim;
.super Lcom/ebay/nautilus/shell/app/ActivityShim;
.source "MagnesUpdateShim.java"


# static fields
.field private static lastUpdate:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 9

    .line 24
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onResume()V

    .line 27
    invoke-virtual {p0}, Lcom/ebay/mobile/MagnesUpdateShim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->PayPalDyson:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 35
    sget-wide v3, Lcom/ebay/mobile/MagnesUpdateShim;->lastUpdate:J

    sub-long v3, v1, v3

    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$I;->payPalDysonRefreshRate:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$I;

    invoke-interface {v0, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return-void

    .line 38
    :cond_2
    sput-wide v1, Lcom/ebay/mobile/MagnesUpdateShim;->lastUpdate:J

    .line 39
    invoke-virtual {p0}, Lcom/ebay/mobile/MagnesUpdateShim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/payments/service/MagnesService;->runMagnes(Landroid/app/Activity;)V

    return-void
.end method
