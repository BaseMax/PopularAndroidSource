.class final Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bl;

.field private synthetic b:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;Lcom/google/android/gms/internal/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ag;->b:Lcom/google/android/gms/internal/af;

    iput-object p2, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->b:Lcom/google/android/gms/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->b:Lcom/google/android/gms/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/ad;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->zzdv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->b:Lcom/google/android/gms/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/bl;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/analytics/r;->zzve()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ad;->b:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->a()V

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/o;->a()V

    :cond_0
    return-void
.end method
