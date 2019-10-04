.class final Lcom/google/android/gms/maps/ah;
.super Lcom/google/android/gms/maps/a/ck;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ah;->a:Lcom/google/android/gms/maps/c$i;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ck;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/a/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/ah;->a:Lcom/google/android/gms/maps/c$i;

    new-instance v1, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/d;-><init>(Lcom/google/android/gms/maps/model/a/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$i;->onGroundOverlayClick(Lcom/google/android/gms/maps/model/d;)V

    return-void
.end method
