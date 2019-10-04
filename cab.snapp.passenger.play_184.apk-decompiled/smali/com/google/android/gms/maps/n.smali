.class final Lcom/google/android/gms/maps/n;
.super Lcom/google/android/gms/maps/a/ay;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/i$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/n;->a:Lcom/google/android/gms/maps/i$b;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/n;->a:Lcom/google/android/gms/maps/i$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/i$b;->onStreetViewPanoramaChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V

    return-void
.end method
