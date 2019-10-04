.class final Lcom/ebay/common/model/search/EbayCategorySummary$1;
.super Ljava/lang/Object;
.source "EbayCategorySummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayCategorySummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/model/search/EbayCategorySummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/search/EbayCategorySummary;
    .locals 3

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v2, Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-direct {v2, v0, v1, p1}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/search/EbayCategorySummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/model/search/EbayCategorySummary;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/model/search/EbayCategorySummary;
    .locals 0

    .line 107
    new-array p1, p1, [Lcom/ebay/common/model/search/EbayCategorySummary;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/ebay/common/model/search/EbayCategorySummary$1;->newArray(I)[Lcom/ebay/common/model/search/EbayCategorySummary;

    move-result-object p1

    return-object p1
.end method
