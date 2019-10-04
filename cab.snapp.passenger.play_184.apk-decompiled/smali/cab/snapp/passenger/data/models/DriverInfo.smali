.class public Lcab/snapp/passenger/data/models/DriverInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/DriverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cellphone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cellphone"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "image_url"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver_name"
    .end annotation
.end field

.field private plateNumber:Lcab/snapp/passenger/data/models/PlateNumber;
    .annotation runtime Lcom/google/gson/a/c;
        value = "plate"
    .end annotation
.end field

.field private vehicleModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "vehicle_model"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcab/snapp/passenger/data/models/DriverInfo$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/DriverInfo$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/DriverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->name:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->cellphone:Ljava/lang/String;

    .line 44
    const-class v0, Lcab/snapp/passenger/data/models/PlateNumber;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/PlateNumber;

    iput-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->plateNumber:Lcab/snapp/passenger/data/models/PlateNumber;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->imageUrl:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->vehicleModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCellphone()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;
    .locals 1

    .line 71
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->plateNumber:Lcab/snapp/passenger/data/models/PlateNumber;

    return-object v0
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->vehicleModel:Ljava/lang/String;

    return-object v0
.end method

.method public setCellphone(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->cellphone:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlateNumber(Lcab/snapp/passenger/data/models/PlateNumber;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->plateNumber:Lcab/snapp/passenger/data/models/PlateNumber;

    return-void
.end method

.method public setVehicleModel(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->vehicleModel:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DriverInfo{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/DriverInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cellphone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/DriverInfo;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", plateNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/DriverInfo;->plateNumber:Lcab/snapp/passenger/data/models/PlateNumber;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/DriverInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vehicleModel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/DriverInfo;->vehicleModel:Ljava/lang/String;

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

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->cellphone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcab/snapp/passenger/data/models/DriverInfo;->plateNumber:Lcab/snapp/passenger/data/models/PlateNumber;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object p2, p0, Lcab/snapp/passenger/data/models/DriverInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcab/snapp/passenger/data/models/DriverInfo;->vehicleModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
