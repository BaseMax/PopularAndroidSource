.class final Lcab/snapp/mapmodule/units/googlemap/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$n;


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

    .line 214
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$13;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 7

    .line 218
    new-instance v6, Lcab/snapp/mapmodule/a/b/b;

    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a$13;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/a;->a(Lcab/snapp/mapmodule/units/googlemap/a;)I

    move-result v1

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcab/snapp/mapmodule/a/b/b;-><init>(IDD)V

    .line 219
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
