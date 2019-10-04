.class public final Lc/e/a/b/h/b/Xb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic b:Lc/e/a/b/h/b/Tb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Xb;->b:Lc/e/a/b/h/b/Tb;

    iput-object p2, p0, Lc/e/a/b/h/b/Xb;->a:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Xb;->b:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/Xb;->a:Lcom/google/android/gms/measurement/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/pc;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/Xb;->b:Lc/e/a/b/h/b/Tb;

    iget-object v1, p0, Lc/e/a/b/h/b/Xb;->a:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-static {v0, v1}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Tb;Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Xb;->b:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/Xb;->a:Lcom/google/android/gms/measurement/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/Xb;->b:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "App info was null when attempting to get app instance id"

    .line 7
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
