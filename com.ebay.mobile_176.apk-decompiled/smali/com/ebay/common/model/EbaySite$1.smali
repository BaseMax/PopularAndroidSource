.class final Lcom/ebay/common/model/EbaySite$1;
.super Ljava/lang/Object;
.source "EbaySite.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/EbaySite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/model/EbaySite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/EbaySite;
    .locals 0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/ebay/common/model/EbaySite;->getSiteFromId(I)Lcom/ebay/common/model/EbaySite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/EbaySite$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/EbaySite;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/model/EbaySite;
    .locals 0

    .line 71
    new-array p1, p1, [Lcom/ebay/common/model/EbaySite;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/EbaySite$1;->newArray(I)[Lcom/ebay/common/model/EbaySite;

    move-result-object p1

    return-object p1
.end method