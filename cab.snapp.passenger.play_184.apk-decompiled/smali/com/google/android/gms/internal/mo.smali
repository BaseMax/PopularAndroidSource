.class final Lcom/google/android/gms/internal/mo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/jx;

.field private synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jx;

    iput-object p2, p0, Lcom/google/android/gms/internal/mo;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mo;->b:Ljava/lang/Runnable;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v2, v0, Lcom/google/android/gms/internal/jx;->b:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/jx;->b:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/jx;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzbah()V

    return-void
.end method
