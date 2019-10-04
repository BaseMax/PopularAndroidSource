.class final Lcom/google/android/gms/maps/w;
.super Lcom/google/android/gms/maps/a/ah;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/c$r;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/maps/model/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/c$r;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$r;->onMarkerDragStart(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/maps/model/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/c$r;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$r;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/maps/model/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/c$r;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$r;->onMarkerDrag(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method
