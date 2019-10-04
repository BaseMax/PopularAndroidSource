.class public Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appVersion:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "app_version"
    .end annotation
.end field

.field private location:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "location"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
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
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->location:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->appVersion:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAppVersion()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->appVersion:Z

    return v0
.end method

.method public isLocation()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->location:Z

    return v0
.end method

.method public setAppVersion(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->appVersion:Z

    return-void
.end method

.method public setLocation(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->location:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->location:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->appVersion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
