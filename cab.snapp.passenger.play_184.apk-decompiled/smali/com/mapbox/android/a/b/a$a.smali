.class final Lcom/mapbox/android/a/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/mapbox/android/a/b/a$a;->a:Lcom/mapbox/android/a/b/d;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mapbox/android/a/b/a$a;->a:Lcom/mapbox/android/a/b/d;

    invoke-static {p1}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/mapbox/android/a/b/a$a;->a:Lcom/mapbox/android/a/b/d;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Current provider disabled"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
