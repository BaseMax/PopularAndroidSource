.class public Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "description"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->amount:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->url:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->amount:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->amount:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->amount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
