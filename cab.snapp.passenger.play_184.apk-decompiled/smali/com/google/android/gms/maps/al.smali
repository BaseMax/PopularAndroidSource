.class final Lcom/google/android/gms/maps/al;
.super Lcom/google/android/gms/maps/a/bh;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/al;->a:Lcom/google/android/gms/maps/c$y;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/al;->a:Lcom/google/android/gms/maps/c$y;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$y;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/al;->a:Lcom/google/android/gms/maps/c$y;

    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzx(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$y;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method
