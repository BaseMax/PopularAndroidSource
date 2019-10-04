.class final Lcom/google/android/gms/maps/ae;
.super Lcom/google/android/gms/maps/a/z;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ae;->a:Lcom/google/android/gms/maps/c$o;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapLoaded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/ae;->a:Lcom/google/android/gms/maps/c$o;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$o;->onMapLoaded()V

    return-void
.end method
