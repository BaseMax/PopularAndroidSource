.class public Lcom/yandex/metrica/impl/ob/ls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ls$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/nu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nu<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/lx;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/mb;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/lz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/nu;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/nu;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->a:Lcom/yandex/metrica/impl/ob/nu;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/ls$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/ls$1;-><init>(Lcom/yandex/metrica/impl/ob/ls;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->c:Lcom/yandex/metrica/impl/ob/lz;

    return-void
.end method

.method public static final a()Lcom/yandex/metrica/impl/ob/ls;
    .locals 1

    .line 33
    sget-object v0, Lcom/yandex/metrica/impl/ob/ls$a;->a:Lcom/yandex/metrica/impl/ob/ls;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ls;)Ljava/util/HashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ls;)Lcom/yandex/metrica/impl/ob/nu;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ls;->a:Lcom/yandex/metrica/impl/ob/nu;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/br;
    .locals 0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ls;->b(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/mb;->a()Lcom/yandex/metrica/impl/br;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ah;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ah<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bb;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ls;->a:Lcom/yandex/metrica/impl/ob/nu;

    .line 127
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->e()Lcom/yandex/metrica/impl/ob/lx;

    move-result-object v3

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/nu;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/mb;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 84
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/mb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ls;->c(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    const/4 v1, 0x0

    .line 91
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/mb;->a(Lcom/yandex/metrica/impl/ob/t;)V

    :cond_2
    return-object v0
.end method

.method c(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;
    .locals 3

    .line 102
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z;->c()Lcom/yandex/metrica/impl/ob/ml;

    move-result-object v0

    .line 104
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->c()Landroid/content/Context;

    move-result-object v1

    .line 105
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ls;->c:Lcom/yandex/metrica/impl/ob/lz;

    .line 103
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/yandex/metrica/impl/ob/ml;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/lz;)Lcom/yandex/metrica/impl/ob/mb;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ah<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bb;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/t;",
            ")",
            "Lcom/yandex/metrica/impl/ob/mb;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ls;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ls;->a:Lcom/yandex/metrica/impl/ob/nu;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ah;->e()Lcom/yandex/metrica/impl/ob/lx;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/nu;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ls;->b(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;

    move-result-object p1

    .line 118
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
