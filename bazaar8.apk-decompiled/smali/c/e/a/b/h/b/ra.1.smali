.class public final Lc/e/a/b/h/b/ra;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lc/e/a/b/h/b/bc;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic b:Lc/e/a/b/h/b/ba;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ra;->b:Lc/e/a/b/h/b/ba;

    iput-object p2, p0, Lc/e/a/b/h/b/ra;->a:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ra;->b:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->y()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/ra;->b:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/ra;->a:Lcom/google/android/gms/measurement/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
