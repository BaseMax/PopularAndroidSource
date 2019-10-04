.class public Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;
.super Ljava/lang/Object;
.source "AllBiddersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/AllBiddersData$Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShippingAddress"
.end annotation


# instance fields
.field public country:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
