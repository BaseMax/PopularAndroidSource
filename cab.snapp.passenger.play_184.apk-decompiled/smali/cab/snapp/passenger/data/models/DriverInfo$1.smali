.class final Lcab/snapp/passenger/data/models/DriverInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/data/models/DriverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcab/snapp/passenger/data/models/DriverInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 1

    .line 16
    new-instance v0, Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/data/models/DriverInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data/models/DriverInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 0

    .line 22
    new-array p1, p1, [Lcab/snapp/passenger/data/models/DriverInfo;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data/models/DriverInfo$1;->newArray(I)[Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object p1

    return-object p1
.end method
