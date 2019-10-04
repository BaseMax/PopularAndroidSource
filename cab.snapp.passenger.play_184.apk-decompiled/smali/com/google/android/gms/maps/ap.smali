.class final Lcom/google/android/gms/maps/ap;
.super Lcom/google/android/gms/maps/a/ce;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ap;->a:Lcom/google/android/gms/maps/c$f;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ce;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMove()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/ap;->a:Lcom/google/android/gms/maps/c$f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$f;->onCameraMove()V

    return-void
.end method
