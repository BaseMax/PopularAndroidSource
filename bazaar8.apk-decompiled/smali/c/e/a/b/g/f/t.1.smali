.class public final Lc/e/a/b/g/f/t;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/t;->k:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/t;->e:Ljava/lang/Long;

    iput-object p3, p0, Lc/e/a/b/g/f/t;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/g/f/t;->g:Ljava/lang/String;

    iput-object p5, p0, Lc/e/a/b/g/f/t;->h:Landroid/os/Bundle;

    iput-boolean p6, p0, Lc/e/a/b/g/f/t;->i:Z

    iput-boolean p7, p0, Lc/e/a/b/g/f/t;->j:Z

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/t;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lc/e/a/b/g/f/b$a;->a:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/t;->k:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/g/f/t;->f:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/g/f/t;->g:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/g/f/t;->h:Landroid/os/Bundle;

    iget-boolean v6, p0, Lc/e/a/b/g/f/t;->i:Z

    iget-boolean v7, p0, Lc/e/a/b/g/f/t;->j:Z

    invoke-interface/range {v2 .. v9}, Lc/e/a/b/g/f/cd;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
