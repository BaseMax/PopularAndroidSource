.class public Lcab/snapp/passenger/data/models/DonationStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/DonationStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDonationEnabledGenerally:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "general"
    .end annotation
.end field

.field private isDonationEnabledOnOnline:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "online"
    .end annotation
.end field

.field private isDonationEnabledOnUssd:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "ussd"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcab/snapp/passenger/data/models/DonationStatus$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/DonationStatus$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/DonationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledGenerally:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnOnline:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnUssd:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDonationEnabledGenerally()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledGenerally:Z

    return v0
.end method

.method public isDonationEnabledOnOnline()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnOnline:Z

    return v0
.end method

.method public isDonationEnabledOnUssd()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnUssd:Z

    return v0
.end method

.method public setDonationEnabledGenerally(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledGenerally:Z

    return-void
.end method

.method public setDonationEnabledOnOnline(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnOnline:Z

    return-void
.end method

.method public setDonationEnabledOnUssd(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnUssd:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DonationStatus{isDonationEnabledGenerally="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledGenerally:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDonationEnabledOnOnline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDonationEnabledOnUssd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnUssd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 108
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledGenerally:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnOnline:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnUssd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
