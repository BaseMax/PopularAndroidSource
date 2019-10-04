.class final Lcom/ebay/common/net/api/browse/BrowseParameters$1;
.super Ljava/lang/Object;
.source "BrowseParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/browse/BrowseParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/net/api/browse/BrowseParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/net/api/browse/BrowseParameters;
    .locals 2

    .line 177
    new-instance v0, Lcom/ebay/common/net/api/browse/BrowseParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ebay/common/net/api/browse/BrowseParameters;-><init>(Landroid/os/Parcel;Lcom/ebay/common/net/api/browse/BrowseParameters$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/browse/BrowseParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/net/api/browse/BrowseParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/net/api/browse/BrowseParameters;
    .locals 0

    .line 183
    new-array p1, p1, [Lcom/ebay/common/net/api/browse/BrowseParameters;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/browse/BrowseParameters$1;->newArray(I)[Lcom/ebay/common/net/api/browse/BrowseParameters;

    move-result-object p1

    return-object p1
.end method
