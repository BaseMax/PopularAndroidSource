.class public Lcom/ebay/common/model/search/EbayItemConditionHistogram;
.super Ljava/lang/Object;
.source "EbayItemConditionHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayItemConditionHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public itemConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayItemConditionHistogram$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    sget-object v1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

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

    .line 28
    instance-of v0, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram;

    iget-object p1, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    iget-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram;->itemConditions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
