.class public final Lc/e/a/b/h/b/oa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzaj;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc/e/a/b/h/b/ba;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/oa;->c:Lc/e/a/b/h/b/ba;

    iput-object p2, p0, Lc/e/a/b/h/b/oa;->a:Lcom/google/android/gms/measurement/internal/zzaj;

    iput-object p3, p0, Lc/e/a/b/h/b/oa;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/oa;->c:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->y()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/oa;->c:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->q()Lc/e/a/b/h/b/ab;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/oa;->a:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v2, p0, Lc/e/a/b/h/b/oa;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/ab;->a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)[B

    const/4 v0, 0x0

    throw v0
.end method
