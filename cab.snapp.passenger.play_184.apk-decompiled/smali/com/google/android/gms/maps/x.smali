.class final Lcom/google/android/gms/maps/x;
.super Lcom/google/android/gms/maps/a/p;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/x;->a:Lcom/google/android/gms/maps/c$k;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/maps/model/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/x;->a:Lcom/google/android/gms/maps/c$k;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$k;->onInfoWindowClick(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method
