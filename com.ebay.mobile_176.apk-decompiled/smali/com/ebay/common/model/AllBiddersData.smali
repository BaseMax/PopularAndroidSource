.class public Lcom/ebay/common/model/AllBiddersData;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "AllBiddersData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/AllBiddersData$Offer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/AllBiddersData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public highBidder:Ljava/lang/String;

.field public highestBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public listingStatus:Ljava/lang/String;

.field public final offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/AllBiddersData$Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/ebay/common/model/AllBiddersData$1;

    invoke-direct {v0}, Lcom/ebay/common/model/AllBiddersData$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/AllBiddersData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/AllBiddersData;->offers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public countBidders()I
    .locals 3

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/ebay/common/model/AllBiddersData;->offers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/AllBiddersData$Offer;

    .line 37
    iget-object v2, v2, Lcom/ebay/common/model/AllBiddersData$Offer;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

    iget-object v2, v2, Lcom/ebay/common/model/AllBiddersData$Offer$User;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method
