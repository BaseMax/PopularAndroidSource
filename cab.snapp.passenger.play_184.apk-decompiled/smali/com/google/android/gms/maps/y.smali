.class final Lcom/google/android/gms/maps/y;
.super Lcom/google/android/gms/maps/a/t;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/y;->a:Lcom/google/android/gms/maps/c$m;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/maps/model/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/y;->a:Lcom/google/android/gms/maps/c$m;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$m;->onInfoWindowLongClick(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method
