.class public Lcom/yandex/metrica/impl/ob/ma$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field final m:Lcom/yandex/metrica/impl/ob/lp;

.field n:Lcom/yandex/metrica/impl/ob/hq;

.field o:Lcom/yandex/metrica/impl/ob/hl;

.field p:Lcom/yandex/metrica/impl/ob/lr;

.field q:J

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Lcom/yandex/metrica/impl/ob/mc;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/lp;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->m:Lcom/yandex/metrica/impl/ob/lp;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ma$a;)Ljava/util/List;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ma$a;->v:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ma$a;)Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ma$a;->w:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 261
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->q:J

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma$a;->b:Ljava/lang/String;

    .line 188
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->o:Lcom/yandex/metrica/impl/ob/hl;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->n:Lcom/yandex/metrica/impl/ob/hq;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/lr;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->p:Lcom/yandex/metrica/impl/ob/lr;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->u:Lcom/yandex/metrica/impl/ob/mc;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ma$a;"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->r:Z

    return-object p0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/ma;
    .locals 2

    .line 292
    new-instance v0, Lcom/yandex/metrica/impl/ob/ma;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/ma;-><init>(Lcom/yandex/metrica/impl/ob/ma$a;B)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ma$a;"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public b(Z)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->t:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ma$a;"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->h:Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ma$a;"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->i:Ljava/util/List;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ma$a;"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->j:Ljava/util/List;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ma$a;"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->v:Ljava/util/List;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma$a;->w:Ljava/lang/String;

    return-object p0
.end method
