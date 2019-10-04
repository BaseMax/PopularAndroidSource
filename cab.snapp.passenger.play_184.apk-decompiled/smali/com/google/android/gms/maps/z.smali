.class final Lcom/google/android/gms/maps/z;
.super Lcom/google/android/gms/maps/a/r;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/c$l;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/maps/model/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/c$l;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$l;->onInfoWindowClose(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method
