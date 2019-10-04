.class final Lcom/google/android/gms/maps/at;
.super Lcom/google/android/gms/maps/a/ab;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/at;->a:Lcom/google/android/gms/maps/c$p;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/at;->a:Lcom/google/android/gms/maps/c$p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$p;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
