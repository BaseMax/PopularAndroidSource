.class final Lcab/snapp/mapmodule/views/GoogleMapView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/mapmodule/views/GoogleMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/views/GoogleMapView;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$5;->a:Lcab/snapp/mapmodule/views/GoogleMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .line 624
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$5;->a:Lcab/snapp/mapmodule/views/GoogleMapView;

    invoke-virtual {v1}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v1

    const/16 v2, 0x7d9

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 625
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFinish()V
    .locals 3

    .line 617
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView$5;->a:Lcab/snapp/mapmodule/views/GoogleMapView;

    invoke-virtual {v1}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v1

    const/16 v2, 0x7d8

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 618
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
