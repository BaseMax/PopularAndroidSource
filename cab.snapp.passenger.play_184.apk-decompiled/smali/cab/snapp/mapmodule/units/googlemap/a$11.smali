.class final Lcab/snapp/mapmodule/units/googlemap/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$g;


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

    .line 196
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$11;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMoveStarted(I)V
    .locals 2

    .line 200
    new-instance p1, Lcab/snapp/mapmodule/a/b/c;

    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a$11;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v0}, Lcab/snapp/mapmodule/units/googlemap/a;->a(Lcab/snapp/mapmodule/units/googlemap/a;)I

    move-result v0

    const/16 v1, 0x7d2

    invoke-direct {p1, v0, v1}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 201
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
