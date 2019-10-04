.class public Lcom/yandex/metrica/impl/bq$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bq$b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/lp$a;

.field private b:Lcom/yandex/metrica/impl/bq$b$a;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/yandex/metrica/impl/ob/lr;

.field private p:Lcom/yandex/metrica/impl/ob/hq;

.field private q:Lcom/yandex/metrica/impl/ob/hl;

.field private r:Ljava/lang/Long;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/yandex/metrica/impl/ob/mc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lp$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->o:Lcom/yandex/metrica/impl/ob/lr;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/hl;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->q:Lcom/yandex/metrica/impl/ob/hl;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/hq;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->p:Lcom/yandex/metrica/impl/ob/hq;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bq$b;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/bq$b;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/bq$b;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/bq$b;->e:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/lp;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lp$a;->a()Lcom/yandex/metrica/impl/ob/lp;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/bq$b$a;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->b:Lcom/yandex/metrica/impl/bq$b$a;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/lr;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->o:Lcom/yandex/metrica/impl/ob/lr;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->v:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->r:Ljava/lang/Long;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->g:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->f:Ljava/util/List;

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lp$a;->a(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/lp$a;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->i:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->h:Ljava/util/List;

    return-void
.end method

.method b(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lp$a;->b(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->f:Ljava/util/List;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->k:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->j:Ljava/util/List;

    return-void
.end method

.method c(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bq$b;->d:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->l:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;)V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->s:Ljava/util/List;

    return-void
.end method

.method d(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bq$b;->e:Z

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->h:Ljava/util/List;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->m:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->u:Ljava/util/List;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bq$b;->c:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->n:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lp$a;->c(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    return-void
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->j:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/yandex/metrica/impl/bq$b;->t:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->a:Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lp$a;->d(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/yandex/metrica/impl/bq$b$a;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->b:Lcom/yandex/metrica/impl/bq$b$a;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bq$b;->c:Z

    return v0
.end method

.method public n()Lcom/yandex/metrica/impl/ob/lr;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->o:Lcom/yandex/metrica/impl/ob/lr;

    return-object v0
.end method

.method public o()Lcom/yandex/metrica/impl/ob/hq;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->p:Lcom/yandex/metrica/impl/ob/hq;

    return-object v0
.end method

.method public p()Lcom/yandex/metrica/impl/ob/hl;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->q:Lcom/yandex/metrica/impl/ob/hl;

    return-object v0
.end method

.method public q()Ljava/lang/Long;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->r:Ljava/lang/Long;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->s:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->u:Ljava/util/List;

    return-object v0
.end method

.method public u()Lcom/yandex/metrica/impl/ob/mc;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/yandex/metrica/impl/bq$b;->v:Lcom/yandex/metrica/impl/ob/mc;

    return-object v0
.end method
