.class final Lcom/google/android/gms/maps/aj;
.super Lcom/google/android/gms/maps/a/as;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/aj;->a:Lcom/google/android/gms/maps/c$w;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/as;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/a/v;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aj;->a:Lcom/google/android/gms/maps/c$w;

    new-instance v1, Lcom/google/android/gms/maps/model/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/h;-><init>(Lcom/google/android/gms/maps/model/a/v;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$w;->onPolygonClick(Lcom/google/android/gms/maps/model/h;)V

    return-void
.end method
