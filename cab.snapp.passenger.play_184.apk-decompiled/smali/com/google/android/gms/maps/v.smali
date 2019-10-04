.class final Lcom/google/android/gms/maps/v;
.super Lcom/google/android/gms/maps/a/af;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/v;->a:Lcom/google/android/gms/maps/c$q;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/af;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/a/s;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/v;->a:Lcom/google/android/gms/maps/c$q;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$q;->onMarkerClick(Lcom/google/android/gms/maps/model/g;)Z

    move-result p1

    return p1
.end method
