.class Lcom/yandex/metrica/impl/ob/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/if$a;,
        Lcom/yandex/metrica/impl/ob/if$c;,
        Lcom/yandex/metrica/impl/ob/if$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/if$c;

.field private b:Lcom/yandex/metrica/impl/ob/if$a;

.field private c:Lcom/yandex/metrica/impl/ob/if$b;

.field private d:Landroid/content/Context;

.field private e:Lcom/yandex/metrica/impl/ob/hq;

.field private f:Lcom/yandex/metrica/impl/ob/ma;

.field private g:Lcom/yandex/metrica/impl/ob/ih;

.field private h:Lcom/yandex/metrica/impl/ob/ii;

.field private i:Lcom/yandex/metrica/impl/ob/hm;

.field private j:Lcom/yandex/metrica/impl/ob/hr;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/hy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/if$c;Lcom/yandex/metrica/impl/ob/if$a;Lcom/yandex/metrica/impl/ob/if$b;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->k:Ljava/util/Map;

    .line 146
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/if;->d:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/if;->f:Lcom/yandex/metrica/impl/ob/ma;

    .line 148
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/if;->e:Lcom/yandex/metrica/impl/ob/hq;

    .line 149
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/if;->a:Lcom/yandex/metrica/impl/ob/if$c;

    .line 150
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/if;->b:Lcom/yandex/metrica/impl/ob/if$a;

    .line 151
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/if;->c:Lcom/yandex/metrica/impl/ob/if$b;

    .line 152
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/if;->h:Lcom/yandex/metrica/impl/ob/ii;

    .line 153
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/if;->i:Lcom/yandex/metrica/impl/ob/hm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 9

    .line 84
    new-instance v4, Lcom/yandex/metrica/impl/ob/if$c;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/if$c;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/if$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/if$a;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/if$b;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/if$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/if;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/if$c;Lcom/yandex/metrica/impl/ob/if$a;Lcom/yandex/metrica/impl/ob/if$b;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->j:Lcom/yandex/metrica/impl/ob/hr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hr;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .locals 7

    .line 89
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->k:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/hy;

    if-nez v0, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->g:Lcom/yandex/metrica/impl/ob/ih;

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->a:Lcom/yandex/metrica/impl/ob/if$c;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/if;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/if$c;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hn;)Lcom/yandex/metrica/impl/ob/ih;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->g:Lcom/yandex/metrica/impl/ob/ih;

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->j:Lcom/yandex/metrica/impl/ob/hr;

    if-nez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->b:Lcom/yandex/metrica/impl/ob/if$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/if;->g:Lcom/yandex/metrica/impl/ob/ih;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/if$a;->a(Lcom/yandex/metrica/impl/ob/hn;)Lcom/yandex/metrica/impl/ob/hr;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->j:Lcom/yandex/metrica/impl/ob/hr;

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/if;->c:Lcom/yandex/metrica/impl/ob/if$b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/if;->e:Lcom/yandex/metrica/impl/ob/hq;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/if;->g:Lcom/yandex/metrica/impl/ob/ih;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/if;->h:Lcom/yandex/metrica/impl/ob/ii;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/if;->i:Lcom/yandex/metrica/impl/ob/hm;

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/if$b;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ih;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)Lcom/yandex/metrica/impl/ob/hy;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/if;->k:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/if;->f:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/if;->e:Lcom/yandex/metrica/impl/ob/hq;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/hy;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 99
    :goto_0
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hy;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/if;->f:Lcom/yandex/metrica/impl/ob/ma;

    .line 127
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/if;->e:Lcom/yandex/metrica/impl/ob/hq;

    return-void
.end method
