.class public Lcab/snapp/passenger/data/models/NullLocation;
.super Landroid/location/Location;
.source "SourceFile"


# instance fields
.field private becauseDenyPermission:Z

.field private locationSettingException:Lcom/google/android/gms/common/api/k;

.field private permanentlyDeniedPermission:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcab/snapp/passenger/data/models/NullLocation;->locationSettingException:Lcom/google/android/gms/common/api/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/k;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcab/snapp/passenger/data/models/NullLocation;->locationSettingException:Lcom/google/android/gms/common/api/k;

    .line 21
    iput-object p2, p0, Lcab/snapp/passenger/data/models/NullLocation;->locationSettingException:Lcom/google/android/gms/common/api/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcab/snapp/passenger/data/models/NullLocation;->locationSettingException:Lcom/google/android/gms/common/api/k;

    .line 27
    iput-boolean p2, p0, Lcab/snapp/passenger/data/models/NullLocation;->becauseDenyPermission:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcab/snapp/passenger/data/models/NullLocation;->locationSettingException:Lcom/google/android/gms/common/api/k;

    .line 33
    iput-boolean p2, p0, Lcab/snapp/passenger/data/models/NullLocation;->becauseDenyPermission:Z

    .line 34
    iput-boolean p3, p0, Lcab/snapp/passenger/data/models/NullLocation;->permanentlyDeniedPermission:Z

    return-void
.end method


# virtual methods
.method public getLocationSettingException()Lcom/google/android/gms/common/api/k;
    .locals 1

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/data/models/NullLocation;->locationSettingException:Lcom/google/android/gms/common/api/k;

    return-object v0
.end method

.method public isBecauseDenyPermission()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/NullLocation;->becauseDenyPermission:Z

    return v0
.end method

.method public isPermanentlyDeniedPermission()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/NullLocation;->permanentlyDeniedPermission:Z

    return v0
.end method
