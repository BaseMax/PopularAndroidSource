.class final Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams$1;
.super Ljava/lang/Object;
.source "AdRtmDataManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;
    .locals 1

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 916
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    invoke-direct {v0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 911
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;
    .locals 0

    .line 922
    new-array p1, p1, [Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 911
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams$1;->newArray(I)[Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    move-result-object p1

    return-object p1
.end method
