.class final Lcom/google/android/gms/internal/gl;
.super Lcom/google/android/gms/internal/gm;


# instance fields
.field private synthetic a:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    new-instance v0, Lcom/google/android/gms/internal/gn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gl;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/hj;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method
