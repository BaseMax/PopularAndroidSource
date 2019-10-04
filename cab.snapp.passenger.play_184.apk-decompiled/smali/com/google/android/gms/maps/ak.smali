.class final Lcom/google/android/gms/maps/ak;
.super Lcom/google/android/gms/maps/a/au;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ak;->a:Lcom/google/android/gms/maps/c$x;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/au;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/ak;->a:Lcom/google/android/gms/maps/c$x;

    new-instance v1, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Lcom/google/android/gms/maps/model/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$x;->onPolylineClick(Lcom/google/android/gms/maps/model/i;)V

    return-void
.end method
