.class final Lcom/google/android/gms/internal/kn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzcha;

.field private synthetic b:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic c:Lcom/google/android/gms/internal/kc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kn;->c:Lcom/google/android/gms/internal/kc;

    iput-object p2, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/zzcha;

    iput-object p3, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->c:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->c:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method