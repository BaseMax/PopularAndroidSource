.class final Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams$1;
.super Ljava/lang/Object;
.source "ShortFormEulaDataManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;
    .locals 3

    .line 127
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/EbaySite;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance v2, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    invoke-direct {v2, v0, v1, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;
    .locals 0

    .line 136
    new-array p1, p1, [Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams$1;->newArray(I)[Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    move-result-object p1

    return-object p1
.end method
