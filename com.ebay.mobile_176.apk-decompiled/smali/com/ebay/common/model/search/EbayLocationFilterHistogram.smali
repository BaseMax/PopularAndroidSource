.class public Lcom/ebay/common/model/search/EbayLocationFilterHistogram;
.super Ljava/lang/Object;
.source "EbayLocationFilterHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayLocationFilterHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 26
    sget-object v3, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;

    iget-object p1, p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    iget-object v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;

    .line 56
    invoke-virtual {v1, p1, p2}, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
