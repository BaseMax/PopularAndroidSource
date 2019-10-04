.class final Lcom/google/android/gms/internal/ji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/internal/jh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jh;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/jh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ji;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/jh;

    invoke-static {v0}, Lcom/google/android/gms/internal/jh;->a(Lcom/google/android/gms/internal/jh;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ji;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jx;->zzbo(Z)V

    return-void
.end method
