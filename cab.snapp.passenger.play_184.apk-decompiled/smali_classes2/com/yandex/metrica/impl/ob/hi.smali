.class public Lcom/yandex/metrica/impl/ob/hi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/hg;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/hg;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Lcom/yandex/metrica/impl/ob/hg;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/hb;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/hd;

    .line 157
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/hd;->d()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/hc;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/hc;->c()Lcom/yandex/metrica/impl/bo$a;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/metrica/impl/bo$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    .line 166
    :cond_2
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hd;->a()Z

    move-result p0

    if-nez p0, :cond_3

    .line 167
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p0

    return-object p0

    .line 168
    :cond_3
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hd;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 169
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p0

    return-object p0

    .line 171
    :cond_4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/hb;"
        }
    .end annotation

    .line 94
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "method_carriers_count"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/hd;

    .line 101
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/hd;->b()I

    move-result v4

    if-le v4, v2, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_0

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/hd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/metrica/impl/ob/hd;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/hd;->b()I

    move-result p2

    if-ne p2, v2, :cond_4

    .line 117
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 120
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_5

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/hd;

    .line 134
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hd;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 5266
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object p0

    .line 253
    new-instance v0, Lcom/yandex/metrica/impl/ob/hi$3;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/hi$3;-><init>(Ljava/lang/String;I)V

    const-string p1, "multiple_device_ids"

    invoke-interface {p0, p1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/hb;"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "method_device_id_comparing"

    invoke-static {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/hd;

    .line 211
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 212
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    .line 213
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hc;",
            ">;)V"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/hc;

    .line 222
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hc;->c()Lcom/yandex/metrica/impl/bo$a;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/bo$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4266
    :cond_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object p0

    .line 228
    new-instance p1, Lcom/yandex/metrica/impl/ob/hi$1;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/hi$1;-><init>(Ljava/lang/StringBuilder;)V

    const-string v0, "multiple_device_ids"

    invoke-interface {p0, v0, p1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hi;->b(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/hb;"
        }
    .end annotation

    .line 179
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "method_first_installed"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide v1, 0x7fffffffffffffffL

    .line 183
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/hd;

    .line 185
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hd;->e()Ljava/lang/Long;

    move-result-object v3

    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v4

    if-gez v4, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_0

    :cond_1
    if-nez v4, :cond_0

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const/4 p1, 0x0

    .line 196
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/hd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    goto :goto_1

    .line 198
    :cond_3
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/hi;->b(Landroid/content/Context;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method b(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;
    .locals 11

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/hh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/hh;-><init>(Landroid/content/Context;)V

    .line 1297
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hi;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1299
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1301
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/bo$a;

    .line 1305
    iget-object v6, v4, Lcom/yandex/metrica/impl/bo$a;->d:Landroid/content/pm/ServiceInfo;

    invoke-static {v6}, Lcom/yandex/metrica/impl/bo;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v6

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_1

    .line 1307
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1309
    :cond_1
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Lcom/yandex/metrica/impl/ob/hg;

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/hg;->e()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2270
    iget-object v6, v4, Lcom/yandex/metrica/impl/bo$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2271
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Lcom/yandex/metrica/impl/ob/hg;

    invoke-virtual {v7, p1, v6}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v7

    .line 2272
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Lcom/yandex/metrica/impl/ob/hg;

    invoke-virtual {v8, p1, v6}, Lcom/yandex/metrica/impl/ob/hg;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v6

    if-nez v7, :cond_2

    if-eqz v6, :cond_4

    .line 2276
    :cond_2
    new-instance v5, Lcom/yandex/metrica/impl/ob/he;

    invoke-direct {v5, v4, v6, v7}, Lcom/yandex/metrica/impl/ob/he;-><init>(Lcom/yandex/metrica/impl/bo$a;Lcom/yandex/metrica/impl/ob/hf;Lcom/yandex/metrica/impl/ob/hf;)V

    goto :goto_1

    .line 2281
    :cond_3
    iget-object v6, v4, Lcom/yandex/metrica/impl/bo$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2282
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Lcom/yandex/metrica/impl/ob/hg;

    invoke-virtual {v7, p1, v6}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2284
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/hf;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v7

    .line 2285
    iget-object v7, v7, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2286
    new-instance v5, Lcom/yandex/metrica/impl/ob/hc;

    invoke-direct {v5, v4, v6}, Lcom/yandex/metrica/impl/ob/hc;-><init>(Lcom/yandex/metrica/impl/bo$a;Lcom/yandex/metrica/impl/ob/hf;)V

    :cond_4
    :goto_1
    if-eqz v5, :cond_0

    .line 1311
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1316
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/bo$a;

    .line 1317
    iget-object v4, v3, Lcom/yandex/metrica/impl/bo$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1318
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Lcom/yandex/metrica/impl/ob/hg;

    invoke-virtual {v6, p1, v4}, Lcom/yandex/metrica/impl/ob/hg;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1319
    invoke-static {v4}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1321
    new-instance v6, Lcom/yandex/metrica/impl/ob/hc;

    new-instance v7, Lcom/yandex/metrica/impl/ob/hf;

    new-instance v8, Lcom/yandex/metrica/impl/ob/hb;

    invoke-direct {v8, v4, v5}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, -0x1

    invoke-direct {v7, v8, v5, v9, v10}, Lcom/yandex/metrica/impl/ob/hf;-><init>(Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hh;J)V

    invoke-direct {v6, v3, v7}, Lcom/yandex/metrica/impl/ob/hc;-><init>(Lcom/yandex/metrica/impl/bo$a;Lcom/yandex/metrica/impl/ob/hf;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/hc;

    .line 63
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/hc;->a()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v6

    .line 64
    iget-object v7, v6, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/metrica/impl/ob/hd;

    if-nez v7, :cond_8

    .line 67
    new-instance v7, Lcom/yandex/metrica/impl/ob/hd;

    invoke-direct {v7, v6, v0}, Lcom/yandex/metrica/impl/ob/hd;-><init>(Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hh;)V

    .line 68
    iget-object v6, v6, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_8
    invoke-virtual {v7, v4}, Lcom/yandex/metrica/impl/ob/hd;->a(Lcom/yandex/metrica/impl/ob/hc;)V

    goto :goto_3

    .line 73
    :cond_9
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    .line 74
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/hd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hd;->c()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v5

    goto :goto_4

    .line 3238
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smth wrong when iterate through initial candidates list"

    .line 3240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3266
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object p1

    .line 3245
    new-instance v1, Lcom/yandex/metrica/impl/ob/hi$2;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/hi$2;-><init>(Ljava/lang/StringBuilder;)V

    const-string v0, "multiple_device_ids"

    invoke-interface {p1, v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 82
    :cond_b
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/ob/hi;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 83
    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v5

    :cond_c
    :goto_4
    return-object v5
.end method

.method c(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bo$a;",
            ">;"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Lcom/yandex/metrica/impl/bo;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bo;->b(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
