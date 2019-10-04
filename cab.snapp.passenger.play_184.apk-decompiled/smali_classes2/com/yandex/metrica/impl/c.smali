.class public abstract Lcom/yandex/metrica/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/b;


# static fields
.field private static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/impl/ob/ke$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/Revenue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/bf;

.field protected final b:Lcom/yandex/metrica/impl/bi;

.field private f:Lcom/yandex/metrica/impl/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xe

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xf

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yandex/metrica/impl/c;->c:Ljava/util/Collection;

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/c$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/c$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/c;->d:Lcom/yandex/metrica/impl/ob/pa;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/pe;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/pe;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/c;->e:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/bf;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    .line 74
    iput-object p3, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    .line 76
    iget-object p1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    new-instance p2, Lcom/yandex/metrica/impl/ob/oo;

    .line 1055
    new-instance p3, Lcom/yandex/metrica/impl/ob/on;

    const-string v0, "Crash Environment"

    const/16 v1, 0x1e

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {p3, v1, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/on;-><init>(IIILjava/lang/String;)V

    .line 77
    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/oo;-><init>(Lcom/yandex/metrica/impl/ob/on;)V

    .line 76
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/bf;->a(Lcom/yandex/metrica/impl/ob/oo;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/i;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2226
    sget-object v0, Lcom/yandex/metrica/impl/c;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    .line 201
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p4, v0

    :goto_1
    invoke-static {p1, p2, p3, p4}, Lcom/yandex/metrica/impl/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/i;)V

    :cond_2
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/aa;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yandex/metrica/impl/c;->f:Lcom/yandex/metrica/impl/aa;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/k;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bf;->a(Lcom/yandex/metrica/impl/k;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/lw;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bf;->b(Lcom/yandex/metrica/impl/ob/lw;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bi;->d()V

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->f:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aa;->b()V

    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    .line 146
    iget-object p1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1156
    iget-object p1, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    sget-object v0, Lcom/yandex/metrica/impl/s$a;->m:Lcom/yandex/metrica/impl/s$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/s;->c(Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 273
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/s;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/i;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/bi;->b(Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bi;->e()V

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->f:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aa;->a()V

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    .line 174
    iget-object p1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->d()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/bf;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 2300
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    .line 2301
    invoke-static {p1}, Lcom/yandex/metrica/impl/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    .line 2300
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V

    :cond_0
    return-void
.end method

.method c()Z
    .locals 4

    .line 277
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/c;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 280
    invoke-static {v1}, Lcom/yandex/metrica/impl/s;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v3, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v2, v1, v3}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    :cond_0
    return v0
.end method

.method d()Lcom/yandex/metrica/impl/bf;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->a()Z

    move-result v0

    return v0
.end method

.method public pauseSession()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/bv;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/s;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/i;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/i;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1339
    invoke-static {p2}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/c;->d()Lcom/yandex/metrica/impl/bf;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;Ljava/util/Map;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 3

    .line 331
    sget-object v0, Lcom/yandex/metrica/impl/c;->e:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/oy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    new-instance v1, Lcom/yandex/metrica/impl/bk;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/bk;-><init>(Lcom/yandex/metrica/Revenue;)V

    iget-object p1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bk;Lcom/yandex/metrica/impl/bf;)V

    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Passed revenue is not valid. Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/oy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2

    .line 2296
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 3

    .line 309
    new-instance v0, Lcom/yandex/metrica/impl/ob/jy;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/jy;-><init>()V

    .line 310
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/UserProfile;->getUserProfileUpdates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 311
    invoke-virtual {v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;->getUserProfileUpdatePatcher()Lcom/yandex/metrica/impl/ob/jz;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/jz;->a(Lcom/yandex/metrica/impl/ob/jy;)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jy;->c()Lcom/yandex/metrica/impl/ob/ke$a;

    move-result-object p1

    .line 314
    sget-object v0, Lcom/yandex/metrica/impl/c;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/oy;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/ob/ke$a;Lcom/yandex/metrica/impl/bf;)V

    return-void

    .line 318
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserInfo wasn\'t sent because "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/oy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public resumeSession()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public sendEventsBuffer()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->m:Lcom/yandex/metrica/impl/s$a;

    invoke-static {v1}, Lcom/yandex/metrica/impl/s;->c(Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->f(Z)V

    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/bi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method
