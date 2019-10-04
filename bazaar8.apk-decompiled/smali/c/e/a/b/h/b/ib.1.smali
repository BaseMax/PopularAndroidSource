.class public final Lc/e/a/b/h/b/ib;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzga;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic d:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;ZLcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ib;->d:Lc/e/a/b/h/b/gb;

    iput-boolean p2, p0, Lc/e/a/b/h/b/ib;->a:Z

    iput-object p3, p0, Lc/e/a/b/h/b/ib;->b:Lcom/google/android/gms/measurement/internal/zzga;

    iput-object p4, p0, Lc/e/a/b/h/b/ib;->c:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ib;->d:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/ib;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/ib;->d:Lc/e/a/b/h/b/gb;

    iget-boolean v2, p0, Lc/e/a/b/h/b/ib;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lc/e/a/b/h/b/ib;->b:Lcom/google/android/gms/measurement/internal/zzga;

    :goto_0
    iget-object v3, p0, Lc/e/a/b/h/b/ib;->c:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1, v0, v2, v3}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/l;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/ib;->d:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V

    return-void
.end method
