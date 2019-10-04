.class public final Lc/b/a/f;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/o<",
            "**>;>;"
        }
    .end annotation
.end field

.field public b:Lc/b/a/c/b/r;

.field public c:Lc/b/a/c/b/a/e;

.field public d:Lc/b/a/c/b/a/b;

.field public e:Lc/b/a/c/b/b/i;

.field public f:Lc/b/a/c/b/c/b;

.field public g:Lc/b/a/c/b/c/b;

.field public h:Lc/b/a/c/b/b/a$a;

.field public i:Lc/b/a/c/b/b/j;

.field public j:Lc/b/a/d/d;

.field public k:I

.field public l:Lc/b/a/g/g;

.field public m:Lc/b/a/d/n$a;

.field public n:Lc/b/a/c/b/c/b;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    iput-object v0, p0, Lc/b/a/f;->a:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lc/b/a/f;->k:I

    .line 4
    new-instance v0, Lc/b/a/g/g;

    invoke-direct {v0}, Lc/b/a/g/g;-><init>()V

    iput-object v0, p0, Lc/b/a/f;->l:Lc/b/a/g/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lc/b/a/e;
    .locals 12

    .line 3
    iget-object v0, p0, Lc/b/a/f;->f:Lc/b/a/c/b/c/b;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lc/b/a/c/b/c/b;->d()Lc/b/a/c/b/c/b;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/f;->f:Lc/b/a/c/b/c/b;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/b/a/f;->g:Lc/b/a/c/b/c/b;

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lc/b/a/c/b/c/b;->c()Lc/b/a/c/b/c/b;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/f;->g:Lc/b/a/c/b/c/b;

    .line 7
    :cond_1
    iget-object v0, p0, Lc/b/a/f;->n:Lc/b/a/c/b/c/b;

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lc/b/a/c/b/c/b;->b()Lc/b/a/c/b/c/b;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/f;->n:Lc/b/a/c/b/c/b;

    .line 9
    :cond_2
    iget-object v0, p0, Lc/b/a/f;->i:Lc/b/a/c/b/b/j;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lc/b/a/c/b/b/j$a;

    invoke-direct {v0, p1}, Lc/b/a/c/b/b/j$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lc/b/a/c/b/b/j$a;->a()Lc/b/a/c/b/b/j;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/f;->i:Lc/b/a/c/b/b/j;

    .line 11
    :cond_3
    iget-object v0, p0, Lc/b/a/f;->j:Lc/b/a/d/d;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Lc/b/a/d/g;

    invoke-direct {v0}, Lc/b/a/d/g;-><init>()V

    iput-object v0, p0, Lc/b/a/f;->j:Lc/b/a/d/d;

    .line 13
    :cond_4
    iget-object v0, p0, Lc/b/a/f;->c:Lc/b/a/c/b/a/e;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lc/b/a/f;->i:Lc/b/a/c/b/b/j;

    invoke-virtual {v0}, Lc/b/a/c/b/b/j;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 15
    new-instance v2, Lc/b/a/c/b/a/k;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lc/b/a/c/b/a/k;-><init>(J)V

    iput-object v2, p0, Lc/b/a/f;->c:Lc/b/a/c/b/a/e;

    goto :goto_0

    .line 16
    :cond_5
    new-instance v0, Lc/b/a/c/b/a/f;

    invoke-direct {v0}, Lc/b/a/c/b/a/f;-><init>()V

    iput-object v0, p0, Lc/b/a/f;->c:Lc/b/a/c/b/a/e;

    .line 17
    :cond_6
    :goto_0
    iget-object v0, p0, Lc/b/a/f;->d:Lc/b/a/c/b/a/b;

    if-nez v0, :cond_7

    .line 18
    new-instance v0, Lc/b/a/c/b/a/j;

    iget-object v2, p0, Lc/b/a/f;->i:Lc/b/a/c/b/b/j;

    invoke-virtual {v2}, Lc/b/a/c/b/b/j;->a()I

    move-result v2

    invoke-direct {v0, v2}, Lc/b/a/c/b/a/j;-><init>(I)V

    iput-object v0, p0, Lc/b/a/f;->d:Lc/b/a/c/b/a/b;

    .line 19
    :cond_7
    iget-object v0, p0, Lc/b/a/f;->e:Lc/b/a/c/b/b/i;

    if-nez v0, :cond_8

    .line 20
    new-instance v0, Lc/b/a/c/b/b/h;

    iget-object v2, p0, Lc/b/a/f;->i:Lc/b/a/c/b/b/j;

    invoke-virtual {v2}, Lc/b/a/c/b/b/j;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lc/b/a/c/b/b/h;-><init>(J)V

    iput-object v0, p0, Lc/b/a/f;->e:Lc/b/a/c/b/b/i;

    .line 21
    :cond_8
    iget-object v0, p0, Lc/b/a/f;->h:Lc/b/a/c/b/b/a$a;

    if-nez v0, :cond_9

    .line 22
    new-instance v0, Lc/b/a/c/b/b/g;

    invoke-direct {v0, p1}, Lc/b/a/c/b/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/b/a/f;->h:Lc/b/a/c/b/b/a$a;

    .line 23
    :cond_9
    iget-object v0, p0, Lc/b/a/f;->b:Lc/b/a/c/b/r;

    if-nez v0, :cond_a

    .line 24
    new-instance v0, Lc/b/a/c/b/r;

    iget-object v3, p0, Lc/b/a/f;->e:Lc/b/a/c/b/b/i;

    iget-object v4, p0, Lc/b/a/f;->h:Lc/b/a/c/b/b/a$a;

    iget-object v5, p0, Lc/b/a/f;->g:Lc/b/a/c/b/c/b;

    iget-object v6, p0, Lc/b/a/f;->f:Lc/b/a/c/b/c/b;

    .line 25
    invoke-static {}, Lc/b/a/c/b/c/b;->e()Lc/b/a/c/b/c/b;

    move-result-object v7

    .line 26
    invoke-static {}, Lc/b/a/c/b/c/b;->b()Lc/b/a/c/b/c/b;

    move-result-object v8

    iget-boolean v9, p0, Lc/b/a/f;->o:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lc/b/a/c/b/r;-><init>(Lc/b/a/c/b/b/i;Lc/b/a/c/b/b/a$a;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Z)V

    iput-object v0, p0, Lc/b/a/f;->b:Lc/b/a/c/b/r;

    .line 27
    :cond_a
    new-instance v6, Lc/b/a/d/n;

    iget-object v0, p0, Lc/b/a/f;->m:Lc/b/a/d/n$a;

    invoke-direct {v6, v0}, Lc/b/a/d/n;-><init>(Lc/b/a/d/n$a;)V

    .line 28
    new-instance v11, Lc/b/a/e;

    iget-object v2, p0, Lc/b/a/f;->b:Lc/b/a/c/b/r;

    iget-object v3, p0, Lc/b/a/f;->e:Lc/b/a/c/b/b/i;

    iget-object v4, p0, Lc/b/a/f;->c:Lc/b/a/c/b/a/e;

    iget-object v5, p0, Lc/b/a/f;->d:Lc/b/a/c/b/a/b;

    iget-object v7, p0, Lc/b/a/f;->j:Lc/b/a/d/d;

    iget v8, p0, Lc/b/a/f;->k:I

    iget-object v0, p0, Lc/b/a/f;->l:Lc/b/a/g/g;

    .line 29
    invoke-virtual {v0}, Lc/b/a/g/g;->F()Lc/b/a/g/g;

    move-result-object v9

    iget-object v10, p0, Lc/b/a/f;->a:Ljava/util/Map;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lc/b/a/e;-><init>(Landroid/content/Context;Lc/b/a/c/b/r;Lc/b/a/c/b/b/i;Lc/b/a/c/b/a/e;Lc/b/a/c/b/a/b;Lc/b/a/d/n;Lc/b/a/d/d;ILc/b/a/g/g;Ljava/util/Map;)V

    return-object v11
.end method

.method public a(Lc/b/a/g/g;)Lc/b/a/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/f;->l:Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/d/n$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/b/a/f;->m:Lc/b/a/d/n$a;

    return-void
.end method
