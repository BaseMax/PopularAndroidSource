.class final Lcab/snapp/mapmodule/units/googlemap/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/units/googlemap/a;->setMap(Lcom/google/android/gms/maps/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/units/googlemap/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/googlemap/a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$10;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 11

    .line 179
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/units/googlemap/a$10;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v1}, Lcab/snapp/mapmodule/units/googlemap/a;->a(Lcab/snapp/mapmodule/units/googlemap/a;)I

    move-result v1

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 180
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a$10;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/a;->b(Lcab/snapp/mapmodule/units/googlemap/a;)Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 184
    iget-object v1, p0, Lcab/snapp/mapmodule/units/googlemap/a$10;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v1}, Lcab/snapp/mapmodule/units/googlemap/a;->b(Lcab/snapp/mapmodule/units/googlemap/a;)Lcom/google/android/gms/maps/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 185
    new-instance v10, Lcab/snapp/mapmodule/a/b/a;

    iget-object v2, p0, Lcab/snapp/mapmodule/units/googlemap/a$10;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    .line 186
    invoke-static {v2}, Lcab/snapp/mapmodule/units/googlemap/a;->a(Lcab/snapp/mapmodule/units/googlemap/a;)I

    move-result v3

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v8, v0

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    float-to-int v9, v0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcab/snapp/mapmodule/a/b/a;-><init>(IDDII)V

    .line 192
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
