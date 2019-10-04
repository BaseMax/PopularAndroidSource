.class final Lcab/snapp/mapmodule/views/MapBoxView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/mapmodule/views/MapBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/views/MapBoxView;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$4;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .line 780
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView$4;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-virtual {v1}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v1

    const/16 v2, 0x7d9

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 781
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFinish()V
    .locals 3

    .line 787
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView$4;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-virtual {v1}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v1

    const/16 v2, 0x7d8

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 788
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
