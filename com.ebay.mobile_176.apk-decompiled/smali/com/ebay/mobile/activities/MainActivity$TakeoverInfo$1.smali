.class final Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
    .locals 3

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1029
    :goto_0
    new-instance p1, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    invoke-direct {p1, v2, v0, v1}, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;-><init>(ZII)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
    .locals 0

    .line 1035
    new-array p1, p1, [Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo$1;->newArray(I)[Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;

    move-result-object p1

    return-object p1
.end method
