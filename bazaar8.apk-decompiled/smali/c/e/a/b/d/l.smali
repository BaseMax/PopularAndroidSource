.class public final synthetic Lc/e/a/b/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lc/e/a/b/d/m;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lc/e/a/b/d/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/e/a/b/d/l;->a:Z

    iput-object p2, p0, Lc/e/a/b/d/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/d/l;->c:Lc/e/a/b/d/m;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lc/e/a/b/d/l;->a:Z

    iget-object v1, p0, Lc/e/a/b/d/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/d/l;->c:Lc/e/a/b/d/m;

    invoke-static {v0, v1, v2}, Lc/e/a/b/d/k;->a(ZLjava/lang/String;Lc/e/a/b/d/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
