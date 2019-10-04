.class Lcom/yandex/metrica/impl/ob/ii;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/ma;

.field private c:Lcom/yandex/metrica/impl/ob/hq;

.field private d:Lcom/yandex/metrica/impl/as;

.field private e:Lcom/yandex/metrica/impl/ob/ft;

.field private f:Lcom/yandex/metrica/impl/ob/fs;

.field private g:Lcom/yandex/metrica/impl/ob/nq;

.field private h:Lcom/yandex/metrica/impl/ob/id;

.field private final i:Lcom/yandex/metrica/impl/a;

.field private j:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/nq;Lcom/yandex/metrica/impl/ob/id;Lcom/yandex/metrica/impl/a;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ii;->j:Z

    .line 191
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ii;->a:Landroid/content/Context;

    .line 192
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ii;->c:Lcom/yandex/metrica/impl/ob/hq;

    .line 193
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ii;->b:Lcom/yandex/metrica/impl/ob/ma;

    .line 194
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ii;->d:Lcom/yandex/metrica/impl/as;

    .line 195
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ii;->e:Lcom/yandex/metrica/impl/ob/ft;

    .line 196
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ii;->f:Lcom/yandex/metrica/impl/ob/fs;

    .line 197
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/ii;->g:Lcom/yandex/metrica/impl/ob/nq;

    .line 198
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/ii;->h:Lcom/yandex/metrica/impl/ob/id;

    .line 199
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/ii;->i:Lcom/yandex/metrica/impl/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V
    .locals 10

    .line 57
    new-instance v4, Lcom/yandex/metrica/impl/as;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/as;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/id;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/id;-><init>()V

    .line 66
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->g()Lcom/yandex/metrica/impl/a;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 57
    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/ii;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/nq;Lcom/yandex/metrica/impl/ob/id;Lcom/yandex/metrica/impl/a;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/fk;)Z
    .locals 9

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->c:Lcom/yandex/metrica/impl/ob/hq;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2151
    iget v0, v0, Lcom/yandex/metrica/impl/ob/hq;->e:I

    int-to-long v3, v0

    .line 2156
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fk;->a()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 2160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->c:Lcom/yandex/metrica/impl/ob/hq;

    if-eqz v0, :cond_3

    iget-wide v3, v0, Lcom/yandex/metrica/impl/ob/hq;->g:J

    .line 2165
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->g:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fk;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    :cond_4
    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->e:Lcom/yandex/metrica/impl/ob/ft;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ii;->a(Lcom/yandex/metrica/impl/ob/fk;)Z

    move-result v0

    .line 1121
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ii;->f:Lcom/yandex/metrica/impl/ob/fs;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/ii;->a(Lcom/yandex/metrica/impl/ob/fk;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    .line 2079
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ii;->j:Z

    if-nez v0, :cond_2

    .line 2081
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->i:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/a;->b()V

    .line 2082
    iput-boolean v3, p0, Lcom/yandex/metrica/impl/ob/ii;->j:Z

    .line 2087
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->c:Lcom/yandex/metrica/impl/ob/hq;

    if-eqz v0, :cond_6

    .line 2088
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ii;->h:Lcom/yandex/metrica/impl/ob/id;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ii;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/ii;->b:Lcom/yandex/metrica/impl/ob/ma;

    .line 2089
    invoke-virtual {v1, v4, v5, v0}, Lcom/yandex/metrica/impl/ob/id;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/hz;

    move-result-object v0

    .line 2090
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hz;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2093
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hz;->d()Lcom/yandex/metrica/impl/ob/im;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/im;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2097
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    .line 2102
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ii;->d:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/aq;)V

    .line 2103
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hz;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2104
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hz;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    return-void

    .line 2114
    :cond_5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hz;->D()V

    :cond_6
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ii;->b:Lcom/yandex/metrica/impl/ob/ma;

    .line 172
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ii;->c:Lcom/yandex/metrica/impl/ob/hq;

    return-void
.end method
