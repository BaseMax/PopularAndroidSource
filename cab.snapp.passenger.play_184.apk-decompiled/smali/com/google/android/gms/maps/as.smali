.class final Lcom/google/android/gms/maps/as;
.super Lcom/google/android/gms/maps/a/x;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/as;->a:Lcom/google/android/gms/maps/c$n;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/as;->a:Lcom/google/android/gms/maps/c$n;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$n;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
