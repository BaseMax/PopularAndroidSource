.class public final Lc/e/a/b/h/b/ma;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzaj;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic c:Lc/e/a/b/h/b/ba;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ma;->c:Lc/e/a/b/h/b/ba;

    iput-object p2, p0, Lc/e/a/b/h/b/ma;->a:Lcom/google/android/gms/measurement/internal/zzaj;

    iput-object p3, p0, Lc/e/a/b/h/b/ma;->b:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ma;->c:Lc/e/a/b/h/b/ba;

    iget-object v1, p0, Lc/e/a/b/h/b/ma;->a:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v2, p0, Lc/e/a/b/h/b/ma;->b:Lcom/google/android/gms/measurement/internal/zzm;

    .line 2
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/e/a/b/h/b/ma;->c:Lc/e/a/b/h/b/ba;

    invoke-static {v1}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/Tb;->y()V

    .line 4
    iget-object v1, p0, Lc/e/a/b/h/b/ma;->c:Lc/e/a/b/h/b/ba;

    invoke-static {v1}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/h/b/ma;->b:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1, v0, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void
.end method
