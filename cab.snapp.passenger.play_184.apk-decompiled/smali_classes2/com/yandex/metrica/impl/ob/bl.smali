.class Lcom/yandex/metrica/impl/ob/bl;
.super Lcom/yandex/metrica/impl/ob/bk;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/ak;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/bl;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/aj;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/bl;->d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/ac;
    .locals 10

    .line 25
    new-instance v9, Lcom/yandex/metrica/impl/ob/ac;

    .line 27
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ls;->a()Lcom/yandex/metrica/impl/ob/ls;

    move-result-object v2

    sget-object v6, Lcom/yandex/metrica/impl/ak;->b:Lcom/yandex/metrica/impl/ob/v;

    new-instance v7, Lcom/yandex/metrica/impl/ob/aw;

    .line 34
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->f()Lcom/yandex/metrica/impl/bs;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/yandex/metrica/impl/ob/aw;-><init>(Lcom/yandex/metrica/impl/bs;)V

    new-instance v8, Lcom/yandex/metrica/impl/ob/mh;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/mh;-><init>()V

    move-object v0, v9

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/ac;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/md;)V

    return-object v9
.end method

.method public d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/bm;
    .locals 8

    .line 46
    new-instance v7, Lcom/yandex/metrica/impl/ob/bm;

    .line 51
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ls;->a()Lcom/yandex/metrica/impl/ob/ls;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/mh;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/mh;-><init>()V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/ob/md;)V

    return-object v7
.end method
