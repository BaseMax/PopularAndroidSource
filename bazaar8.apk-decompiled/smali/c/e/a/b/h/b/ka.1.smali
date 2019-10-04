.class public final Lc/e/a/b/h/b/ka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/measurement/internal/zzr;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lc/e/a/b/h/b/ba;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/ba;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ka;->d:Lc/e/a/b/h/b/ba;

    iput-object p2, p0, Lc/e/a/b/h/b/ka;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/h/b/ka;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/ka;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ka;->d:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->y()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/ka;->d:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/ka;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/h/b/ka;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/h/b/ka;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
