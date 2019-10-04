.class final Lcom/google/android/gms/internal/lp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/lq;

.field private synthetic b:Lcom/google/android/gms/internal/ln;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ln;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lp;->b:Lcom/google/android/gms/internal/ln;

    iput-object p2, p0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->b:Lcom/google/android/gms/internal/ln;

    iget-object v1, p0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/lq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ln;->a(Lcom/google/android/gms/internal/ln;Lcom/google/android/gms/internal/lq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->b:Lcom/google/android/gms/internal/ln;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ln;->a:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lr;->a(Lcom/google/android/gms/measurement/AppMeasurement$g;)V

    return-void
.end method
