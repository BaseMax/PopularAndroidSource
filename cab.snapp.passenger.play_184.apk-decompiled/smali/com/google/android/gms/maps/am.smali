.class final Lcom/google/android/gms/maps/am;
.super Lcom/google/android/gms/maps/a/aq;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/am;->a:Lcom/google/android/gms/maps/c$v;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/am;->a:Lcom/google/android/gms/maps/c$v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$v;->onPoiClick(Lcom/google/android/gms/maps/model/PointOfInterest;)V

    return-void
.end method
