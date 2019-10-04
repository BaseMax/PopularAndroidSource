.class public final Lc/e/a/b/g/f/g;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/g;->f:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/g;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/g;->f:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/g;->e:Ljava/lang/String;

    iget-wide v2, p0, Lc/e/a/b/g/f/b$a;->b:J

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/g/f/cd;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void
.end method
