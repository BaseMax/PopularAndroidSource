.class final Lcom/google/android/gms/maps/k;
.super Lcom/google/android/gms/maps/a/n;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/c$j;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIndoorBuildingFocused()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/c$j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$j;->onIndoorBuildingFocused()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/maps/model/a/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/c$j;

    new-instance v1, Lcom/google/android/gms/maps/model/e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/e;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$j;->onIndoorLevelActivated(Lcom/google/android/gms/maps/model/e;)V

    return-void
.end method
