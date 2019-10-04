.class public Lcom/yandex/metrica/impl/ob/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/gr<",
        "Lcom/yandex/metrica/impl/ob/ma;",
        "Lcom/yandex/metrica/impl/ob/kh$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gt;

.field private b:Lcom/yandex/metrica/impl/ob/gq;

.field private c:Lcom/yandex/metrica/impl/ob/gw;

.field private d:Lcom/yandex/metrica/impl/ob/gv;

.field private e:Lcom/yandex/metrica/impl/ob/gs;

.field private f:Lcom/yandex/metrica/impl/ob/gy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/gt;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gt;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gx;->a:Lcom/yandex/metrica/impl/ob/gt;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/gq;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gq;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gx;->b:Lcom/yandex/metrica/impl/ob/gq;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/gw;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gw;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gx;->c:Lcom/yandex/metrica/impl/ob/gw;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/gv;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gv;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gx;->d:Lcom/yandex/metrica/impl/ob/gv;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/gs;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gs;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gx;->e:Lcom/yandex/metrica/impl/ob/gs;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/gy;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gy;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gx;->f:Lcom/yandex/metrica/impl/ob/gy;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0

    .line 22
    check-cast p1, Lcom/yandex/metrica/impl/ob/ma;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gx;->a(Lcom/yandex/metrica/impl/ob/ma;)Lcom/yandex/metrica/impl/ob/kh$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;)Lcom/yandex/metrica/impl/ob/kh$a;
    .locals 6

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a;-><init>()V

    .line 37
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->b:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->h:[Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->i:[Ljava/lang/String;

    .line 44
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->d:[Ljava/lang/String;

    .line 47
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 48
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->g:[Ljava/lang/String;

    .line 50
    :cond_4
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 51
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->t:[Ljava/lang/String;

    .line 53
    :cond_5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    if-eqz v1, :cond_6

    .line 54
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->a:Lcom/yandex/metrica/impl/ob/gt;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    .line 55
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/kh$a$c;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->k:Lcom/yandex/metrica/impl/ob/kh$a$c;

    .line 57
    :cond_6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    if-eqz v1, :cond_7

    .line 58
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->b:Lcom/yandex/metrica/impl/ob/gq;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    .line 59
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gq;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/kh$a$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->l:Lcom/yandex/metrica/impl/ob/kh$a$a;

    .line 61
    :cond_7
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->p:Lcom/yandex/metrica/impl/ob/lr;

    if-eqz v1, :cond_8

    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->c:Lcom/yandex/metrica/impl/ob/gw;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->p:Lcom/yandex/metrica/impl/ob/lr;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gw;->a(Lcom/yandex/metrica/impl/ob/lr;)Lcom/yandex/metrica/impl/ob/kh$a$e;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->m:Lcom/yandex/metrica/impl/ob/kh$a$e;

    .line 64
    :cond_8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->o:Ljava/lang/String;

    .line 65
    :cond_9
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->e:Ljava/lang/String;

    .line 66
    :cond_a
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->f:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->f:Ljava/lang/String;

    .line 67
    :cond_b
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->q:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->r:Ljava/lang/String;

    .line 68
    :cond_c
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->e:Lcom/yandex/metrica/impl/ob/gs;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gs;->a(Lcom/yandex/metrica/impl/ob/lp;)Lcom/yandex/metrica/impl/ob/kh$a$b;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->j:Lcom/yandex/metrica/impl/ob/kh$a$b;

    .line 69
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->l:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->p:Ljava/lang/String;

    .line 70
    :cond_d
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/ma;->t:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->q:Z

    .line 71
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ma;->r:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->c:J

    .line 72
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/ma;->s:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->v:Z

    .line 73
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->u:Ljava/util/List;

    if-eqz v1, :cond_f

    .line 74
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->u:Ljava/util/List;

    .line 1129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/kh$a$d;

    const/4 v3, 0x0

    .line 1131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/bq$a;

    .line 1132
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/gx;->d:Lcom/yandex/metrica/impl/ob/gv;

    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/gv;->a(Lcom/yandex/metrica/impl/bq$a;)Lcom/yandex/metrica/impl/ob/kh$a$d;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_e
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/kh$a;->n:[Lcom/yandex/metrica/impl/ob/kh$a$d;

    .line 76
    :cond_f
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->v:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 77
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->s:Ljava/lang/String;

    .line 79
    :cond_10
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->w:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v1, :cond_11

    .line 80
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->f:Lcom/yandex/metrica/impl/ob/gy;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->w:Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/gy;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/kh$a$f;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->u:Lcom/yandex/metrica/impl/ob/kh$a$f;

    :cond_11
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kh$a;)Lcom/yandex/metrica/impl/ob/ma;
    .locals 7

    .line 88
    new-instance v0, Lcom/yandex/metrica/impl/ob/ma$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->e:Lcom/yandex/metrica/impl/ob/gs;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/kh$a;->j:Lcom/yandex/metrica/impl/ob/kh$a$b;

    .line 89
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gs;->a(Lcom/yandex/metrica/impl/ob/kh$a$b;)Lcom/yandex/metrica/impl/ob/lp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;-><init>(Lcom/yandex/metrica/impl/ob/lp;)V

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hg;->d()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->o:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->e:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->d:[Ljava/lang/String;

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->g:[Ljava/lang/String;

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->i:[Ljava/lang/String;

    .line 96
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->h:[Ljava/lang/String;

    .line 97
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->c(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->f:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->t:[Ljava/lang/String;

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->e(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->r:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->p:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->q:Z

    .line 102
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->c:J

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ma$a;->a(J)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->v:Z

    .line 104
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->n:[Lcom/yandex/metrica/impl/ob/kh$a$d;

    .line 1142
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1143
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 1144
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/gx;->d:Lcom/yandex/metrica/impl/ob/gv;

    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/ob/gv;->a(Lcom/yandex/metrica/impl/ob/kh$a$d;)Lcom/yandex/metrica/impl/bq$a;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/ma$a;->f(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->s:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    .line 107
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->k:Lcom/yandex/metrica/impl/ob/kh$a$c;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->a:Lcom/yandex/metrica/impl/ob/gt;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/kh$a;->k:Lcom/yandex/metrica/impl/ob/kh$a$c;

    .line 109
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/kh$a$c;)Lcom/yandex/metrica/impl/ob/hq;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/ma$a;

    .line 112
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->l:Lcom/yandex/metrica/impl/ob/kh$a$a;

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->b:Lcom/yandex/metrica/impl/ob/gq;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/kh$a;->l:Lcom/yandex/metrica/impl/ob/kh$a$a;

    .line 114
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gq;->a(Lcom/yandex/metrica/impl/ob/kh$a$a;)Lcom/yandex/metrica/impl/ob/hl;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/ma$a;

    .line 117
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->m:Lcom/yandex/metrica/impl/ob/kh$a$e;

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->c:Lcom/yandex/metrica/impl/ob/gw;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/kh$a;->m:Lcom/yandex/metrica/impl/ob/kh$a$e;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gw;->a(Lcom/yandex/metrica/impl/ob/kh$a$e;)Lcom/yandex/metrica/impl/ob/lr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/lr;)Lcom/yandex/metrica/impl/ob/ma$a;

    .line 120
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->u:Lcom/yandex/metrica/impl/ob/kh$a$f;

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gx;->f:Lcom/yandex/metrica/impl/ob/gy;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kh$a;->u:Lcom/yandex/metrica/impl/ob/kh$a$f;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/gy;->a(Lcom/yandex/metrica/impl/ob/kh$a$f;)Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/ma$a;

    .line 123
    :cond_4
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ma$a;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lcom/yandex/metrica/impl/ob/kh$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gx;->a(Lcom/yandex/metrica/impl/ob/kh$a;)Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    return-object p1
.end method
