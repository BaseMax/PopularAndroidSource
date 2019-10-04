.class final Lcom/google/android/gms/maps/ai;
.super Lcom/google/android/gms/maps/a/ci;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ai;->a:Lcom/google/android/gms/maps/c$h;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ci;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/a/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/ai;->a:Lcom/google/android/gms/maps/c$h;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/google/android/gms/maps/model/a/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$h;->onCircleClick(Lcom/google/android/gms/maps/model/c;)V

    return-void
.end method
