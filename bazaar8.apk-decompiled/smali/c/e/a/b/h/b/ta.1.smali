.class public final Lc/e/a/b/h/b/ta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Lc/e/a/b/h/b/ba;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/ba;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ta;->e:Lc/e/a/b/h/b/ba;

    iput-object p2, p0, Lc/e/a/b/h/b/ta;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/h/b/ta;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/ta;->c:Ljava/lang/String;

    iput-wide p5, p0, Lc/e/a/b/h/b/ta;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ta;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/ta;->e:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->B()Lc/e/a/b/h/b/Y;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->E()Lc/e/a/b/h/b/db;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/ta;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/db;->a(Ljava/lang/String;Lc/e/a/b/h/b/cb;)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Lc/e/a/b/h/b/cb;

    iget-object v2, p0, Lc/e/a/b/h/b/ta;->c:Ljava/lang/String;

    iget-wide v3, p0, Lc/e/a/b/h/b/ta;->d:J

    invoke-direct {v1, v2, v0, v3, v4}, Lc/e/a/b/h/b/cb;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 7
    iget-object v0, p0, Lc/e/a/b/h/b/ta;->e:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->B()Lc/e/a/b/h/b/Y;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->E()Lc/e/a/b/h/b/db;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/ta;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/db;->a(Ljava/lang/String;Lc/e/a/b/h/b/cb;)V

    return-void
.end method
