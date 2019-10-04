.class public final Lcom/google/android/gms/location/j;
.super Lcom/google/android/gms/common/api/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/l<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Lcom/google/android/gms/common/api/m;

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsResult;->getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v0

    return-object v0
.end method
