.class final Lcom/mapbox/android/a/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/a/b/j;
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

.field private b:Landroid/location/Location;


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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/mapbox/android/a/b/j$a;->a:Lcom/mapbox/android/a/b/d;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mapbox/android/a/b/j$a;->b:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/mapbox/android/a/b/k;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/mapbox/android/a/b/j$a;->b:Landroid/location/Location;

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/mapbox/android/a/b/j$a;->a:Lcom/mapbox/android/a/b/d;

    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mapbox/android/a/b/j$a;->b:Landroid/location/Location;

    invoke-static {v0}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

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
