.class public final Lc/e/a/b/g/f/o;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/o;->j:Lc/e/a/b/g/f/b;

    const/4 p2, 0x5

    iput p2, p0, Lc/e/a/b/g/f/o;->e:I

    iput-object p4, p0, Lc/e/a/b/g/f/o;->f:Ljava/lang/String;

    iput-object p5, p0, Lc/e/a/b/g/f/o;->g:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lc/e/a/b/g/f/o;->h:Ljava/lang/Object;

    iput-object p2, p0, Lc/e/a/b/g/f/o;->i:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/o;->j:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v1

    iget v2, p0, Lc/e/a/b/g/f/o;->e:I

    iget-object v3, p0, Lc/e/a/b/g/f/o;->f:Ljava/lang/String;

    iget-object v0, p0, Lc/e/a/b/g/f/o;->g:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v4

    iget-object v0, p0, Lc/e/a/b/g/f/o;->h:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v5

    iget-object v0, p0, Lc/e/a/b/g/f/o;->i:Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v6

    .line 5
    invoke-interface/range {v1 .. v6}, Lc/e/a/b/g/f/cd;->logHealthData(ILjava/lang/String;Lc/e/a/b/e/a;Lc/e/a/b/e/a;Lc/e/a/b/e/a;)V

    return-void
.end method
