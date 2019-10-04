.class public final Lc/e/a/b/g/f/u;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Z

.field public final synthetic i:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/u;->i:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/u;->e:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/g/f/u;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/g/f/u;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Lc/e/a/b/g/f/u;->h:Z

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/u;->i:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/g/f/u;->e:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/g/f/u;->f:Ljava/lang/String;

    iget-object v0, p0, Lc/e/a/b/g/f/u;->g:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v4

    iget-boolean v5, p0, Lc/e/a/b/g/f/u;->h:Z

    iget-wide v6, p0, Lc/e/a/b/g/f/b$a;->a:J

    .line 3
    invoke-interface/range {v1 .. v7}, Lc/e/a/b/g/f/cd;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/e/a;ZJ)V

    return-void
.end method
