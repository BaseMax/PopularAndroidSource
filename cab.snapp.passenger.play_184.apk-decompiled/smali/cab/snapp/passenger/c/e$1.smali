.class final Lcab/snapp/passenger/c/e$1;
.super Lcom/google/android/gms/location/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/c/e;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcab/snapp/passenger/c/e$1;->a:Lcab/snapp/passenger/c/e;

    invoke-direct {p0}, Lcom/google/android/gms/location/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 265
    invoke-super {p0, p1}, Lcom/google/android/gms/location/g;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcab/snapp/passenger/c/e$1;->a:Lcab/snapp/passenger/c/e;

    invoke-static {v0}, Lcab/snapp/passenger/c/e;->a(Lcab/snapp/passenger/c/e;)Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcab/snapp/passenger/c/e$1;->a:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/passenger/c/e;->a(Lcab/snapp/passenger/c/e;Landroid/location/Location;)V

    :cond_0
    return-void
.end method
