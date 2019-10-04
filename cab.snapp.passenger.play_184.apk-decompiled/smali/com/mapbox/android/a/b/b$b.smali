.class final Lcom/mapbox/android/a/b/b$b;
.super Lcom/google/android/gms/location/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/mapbox/android/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/android/a/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/location/g;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/mapbox/android/a/b/b$b;->a:Lcom/mapbox/android/a/b/d;

    return-void
.end method


# virtual methods
.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/google/android/gms/location/g;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mapbox/android/a/b/b$b;->a:Lcom/mapbox/android/a/b/d;

    invoke-static {p1}, Lcom/mapbox/android/a/b/i;->create(Ljava/util/List;)Lcom/mapbox/android/a/b/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/mapbox/android/a/b/b$b;->a:Lcom/mapbox/android/a/b/d;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unavailable location"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
