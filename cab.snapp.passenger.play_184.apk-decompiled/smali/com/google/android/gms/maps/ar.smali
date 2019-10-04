.class final Lcom/google/android/gms/maps/ar;
.super Lcom/google/android/gms/maps/a/ca;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ar;->a:Lcom/google/android/gms/maps/c$d;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/ar;->a:Lcom/google/android/gms/maps/c$d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$d;->onCameraIdle()V

    return-void
.end method
