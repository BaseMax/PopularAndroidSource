.class public Lcab/snapp/passenger/data/models/FormattedAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/FormattedAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private details:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "details"
    .end annotation
.end field

.field private formattedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "formatted_address"
    .end annotation
.end field

.field private lat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lat"
    .end annotation
.end field

.field private lng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lng"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcab/snapp/passenger/data/models/FormattedAddress$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/FormattedAddress$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/FormattedAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lat:D

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lng:D

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->formattedAddress:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->details:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lng:D

    return-wide v0
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->details:Ljava/lang/String;

    return-void
.end method

.method public setFormattedAddress(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->formattedAddress:Ljava/lang/String;

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lng:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormattedAddress{org_lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", org_lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", formattedAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->formattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", details=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->details:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->lng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 100
    iget-object p2, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->formattedAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcab/snapp/passenger/data/models/FormattedAddress;->details:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
