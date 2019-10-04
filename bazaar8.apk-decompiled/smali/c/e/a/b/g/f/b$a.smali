.class public abstract Lc/e/a/b/g/f/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final synthetic d:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;Z)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/g/f/b;Z)V
    .locals 2

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/b$a;->d:Lc/e/a/b/g/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lc/e/a/b/g/f/b;->g:Lc/e/a/b/d/g/e;

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/g/f/b$a;->a:J

    .line 4
    iget-object p1, p1, Lc/e/a/b/g/f/b;->g:Lc/e/a/b/d/g/e;

    invoke-interface {p1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/g/f/b$a;->b:J

    .line 5
    iput-boolean p2, p0, Lc/e/a/b/g/f/b$a;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$a;->d:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/b$a;->b()V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/g/f/b$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/b$a;->d:Lc/e/a/b/g/f/b;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lc/e/a/b/g/f/b$a;->c:Z

    invoke-static {v1, v0, v2, v3}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Ljava/lang/Exception;ZZ)V

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/b$a;->b()V

    return-void
.end method
