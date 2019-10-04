.class final Lcom/google/android/gms/maps/ao;
.super Lcom/google/android/gms/maps/a/cg;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ao;->a:Lcom/google/android/gms/maps/c$g;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMoveStarted(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/ao;->a:Lcom/google/android/gms/maps/c$g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$g;->onCameraMoveStarted(I)V

    return-void
.end method
