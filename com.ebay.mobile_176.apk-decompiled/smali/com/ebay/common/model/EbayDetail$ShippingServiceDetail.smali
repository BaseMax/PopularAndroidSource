.class public final Lcom/ebay/common/model/EbayDetail$ShippingServiceDetail;
.super Ljava/lang/Object;
.source "EbayDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/EbayDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShippingServiceDetail"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public shippingCarrier:Ljava/lang/String;

.field public shippingCategory:Ljava/lang/String;

.field public shippingService:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
