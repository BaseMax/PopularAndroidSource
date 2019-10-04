.class final Lcom/google/android/gms/internal/kh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzcgl;

.field private synthetic b:Lcom/google/android/gms/internal/kc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kh;->b:Lcom/google/android/gms/internal/kc;

    iput-object p2, p0, Lcom/google/android/gms/internal/kh;->a:Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kh;->b:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kh;->b:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kh;->a:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcgl;)V

    return-void
.end method
