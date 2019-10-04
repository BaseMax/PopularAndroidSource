.class public Lcom/ebay/common/rtm/RtmContent$Ad;
.super Ljava/lang/Object;
.source "RtmContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ad"
.end annotation


# instance fields
.field public adSizeHeight:I

.field public adSizeWidth:I

.field public adUnitId:Ljava/lang/String;

.field public externalLink:Ljava/net/URL;

.field public externalLinkName:Ljava/lang/String;

.field public formattedPriceString:Ljava/lang/String;

.field public formattedStrikethroughPrice:Ljava/lang/String;

.field public isPla:Z

.field public parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/rtm/RtmContent$Parameter;",
            ">;"
        }
    .end annotation
.end field

.field public ppid:Ljava/lang/String;

.field public retailerName:Ljava/lang/String;

.field public shippingInfo:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public thumbnailURL:Ljava/net/URL;

.field public title:Ljava/lang/String;

.field public trackingClickID:Ljava/lang/String;

.field public trackingURL:Ljava/net/URL;

.field public userTargeted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
