.class public Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;
.super Ljava/lang/Object;
.source "AllBiddersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/AllBiddersData$Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemBidDetail"
.end annotation


# instance fields
.field public bidCount:I

.field public categoryId:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field public lastBidTime:Ljava/util/Date;

.field public sellerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
