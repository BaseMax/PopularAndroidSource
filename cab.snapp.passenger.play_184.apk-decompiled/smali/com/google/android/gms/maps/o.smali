.class final Lcom/google/android/gms/maps/o;
.super Lcom/google/android/gms/maps/a/aw;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/i$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/o;->a:Lcom/google/android/gms/maps/i$a;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/o;->a:Lcom/google/android/gms/maps/i$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/i$a;->onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    return-void
.end method
