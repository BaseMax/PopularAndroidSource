.class public final Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;
.super Ljava/lang/Object;
.source "EbayLocationFilterHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayLocationFilterHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public isSelected:Z

.field public final localizedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->id:I

    .line 86
    iput-object p2, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->localizedName:Ljava/lang/String;

    .line 87
    iput-boolean p3, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->isSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->id:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->localizedName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->isSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;

    if-eqz v1, :cond_2

    .line 137
    check-cast p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;

    .line 138
    iget v1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->id:I

    iget v2, p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->id:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->localizedName:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->localizedName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->isSelected:Z

    iget-boolean p1, p1, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->isSelected:Z

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 147
    iget v0, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->id:I

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->localizedName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->isSelected:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget p2, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->localizedName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-boolean p2, p0, Lcom/ebay/common/model/search/EbayLocationFilterHistogram$Location;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
