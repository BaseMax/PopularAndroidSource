.class public final Lcom/ebay/common/model/EbaySite;
.super Ljava/lang/Object;
.source "EbaySite.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/EbaySite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final idInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/ebay/common/model/EbaySite$1;

    invoke-direct {v0}, Lcom/ebay/common/model/EbaySite$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/EbaySite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/ebay/common/model/EbaySite;->idInt:I

    return-void
.end method

.method public static getSiteFromId(I)Lcom/ebay/common/model/EbaySite;
    .locals 1

    .line 54
    new-instance v0, Lcom/ebay/common/model/EbaySite;

    invoke-direct {v0, p0}, Lcom/ebay/common/model/EbaySite;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 25
    instance-of v0, p1, Lcom/ebay/common/model/EbaySite;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ebay/common/model/EbaySite;

    iget p1, p1, Lcom/ebay/common/model/EbaySite;->idInt:I

    iget v0, p0, Lcom/ebay/common/model/EbaySite;->idInt:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ebay/common/model/EbaySite;->idInt:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget p2, p0, Lcom/ebay/common/model/EbaySite;->idInt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
