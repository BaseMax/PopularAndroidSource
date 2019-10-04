.class public Lcom/yandex/metrica/impl/ob/le;
.super Lcom/yandex/metrica/impl/ob/lc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/le$b;,
        Lcom/yandex/metrica/impl/ob/le$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/location/Location;

.field private c:Z

.field private d:Z

.field private e:Lcom/yandex/metrica/CounterConfiguration$a;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/lc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/le;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/le;Ljava/lang/String;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/le;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/le;Z)V
    .locals 0

    .line 1124
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->r:Z

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/le;->k:Ljava/lang/String;

    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->l:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->m:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->n:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->o:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->r:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->a:Z

    return v0
.end method

.method public K()Landroid/location/Location;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/le;->b:Landroid/location/Location;

    return-object v0
.end method

.method public L()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->c:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->d:Z

    return v0
.end method

.method public N()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/le;->e:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0
.end method

.method public O()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/yandex/metrica/impl/ob/le;->f:I

    return v0
.end method

.method public P()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/yandex/metrica/impl/ob/le;->g:I

    return v0
.end method

.method public Q()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->h:Z

    return v0
.end method

.method public R()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/yandex/metrica/impl/ob/le;->i:I

    return v0
.end method

.method public S()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/yandex/metrica/impl/ob/le;->s:I

    return v0
.end method

.method public T()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/le;->j:Z

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/le;->p:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/yandex/metrica/impl/ob/le;->f:I

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/le;->b:Landroid/location/Location;

    return-void
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/le;->e:Lcom/yandex/metrica/CounterConfiguration$a;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/le;->p:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/le;->q:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->l:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/le;->q:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/yandex/metrica/impl/ob/le;->g:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->m:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/yandex/metrica/impl/ob/le;->i:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->n:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/yandex/metrica/impl/ob/le;->s:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->o:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->a:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/lc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/le;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->c:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->d:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->h:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/le;->j:Z

    return-void
.end method
