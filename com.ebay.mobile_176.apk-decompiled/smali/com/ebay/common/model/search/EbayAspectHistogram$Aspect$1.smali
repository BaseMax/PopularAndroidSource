.class final Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect$1;
.super Ljava/lang/Object;
.source "EbayAspectHistogram.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
    .locals 1

    .line 688
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    invoke-direct {v0, p1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 678
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
    .locals 0

    .line 682
    new-array p1, p1, [Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 678
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect$1;->newArray(I)[Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    move-result-object p1

    return-object p1
.end method
