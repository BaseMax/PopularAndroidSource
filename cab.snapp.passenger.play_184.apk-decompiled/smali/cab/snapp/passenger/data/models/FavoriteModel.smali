.class public Lcab/snapp/passenger/data/models/FavoriteModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private detailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "detailed_address"
    .end annotation
.end field

.field private formattedAddress:Lcab/snapp/passenger/data/models/FormattedAddress;
    .annotation runtime Lcom/google/gson/a/c;
        value = "location"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private mapUtl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "map_url"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcab/snapp/passenger/data/models/FavoriteModel$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/FavoriteModel$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/FavoriteModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->name:Ljava/lang/String;

    .line 45
    const-class v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->formattedAddress:Lcab/snapp/passenger/data/models/FormattedAddress;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->id:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->detailAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetailAddress()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->detailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;
    .locals 1

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->formattedAddress:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 72
    iget v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->id:I

    return v0
.end method

.method public getMapUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->mapUtl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailAddress(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->detailAddress:Ljava/lang/String;

    return-void
.end method

.method public setFormattedAddress(Lcab/snapp/passenger/data/models/FormattedAddress;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->formattedAddress:Lcab/snapp/passenger/data/models/FormattedAddress;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->id:I

    return-void
.end method

.method public setMapUtl(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->mapUtl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FavoriteModel{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", formattedAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->formattedAddress:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", detailAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->detailAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mapUtl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->mapUtl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->formattedAddress:Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    iget p2, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object p2, p0, Lcab/snapp/passenger/data/models/FavoriteModel;->detailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
