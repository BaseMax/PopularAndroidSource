.class public final Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;
.super Ljava/lang/Object;
.source "EbayAspectHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayAspectHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AspectValue"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checked:Z

.field public count:I

.field public serviceValue:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 508
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    const/4 v1, 0x0

    .line 435
    iput v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    .line 436
    iput-boolean v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    .line 437
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;
    .locals 1

    .line 459
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 463
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 472
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 475
    :cond_1
    check-cast p1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 477
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    .line 478
    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    iget v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    iget-boolean p1, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 487
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 488
    iget v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 489
    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 502
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-boolean p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
