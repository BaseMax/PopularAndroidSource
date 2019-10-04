.class public Lcom/yandex/metrica/impl/ob/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ia$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ib;

.field private b:Lcom/yandex/metrica/impl/ob/if;

.field private c:Lcom/yandex/metrica/impl/ob/hs;

.field private d:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/ia$a;Lcom/yandex/metrica/impl/ob/if;Lcom/yandex/metrica/impl/ob/hs;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/yandex/metrica/impl/ob/ia$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/ia$1;-><init>(Lcom/yandex/metrica/impl/ob/ia;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->d:Landroid/location/LocationListener;

    .line 114
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ia;->c:Lcom/yandex/metrica/impl/ob/hs;

    .line 115
    iget-object p6, p0, Lcom/yandex/metrica/impl/ob/ia;->d:Landroid/location/LocationListener;

    invoke-virtual {p4, p1, p2, p3, p6}, Lcom/yandex/metrica/impl/ob/ia$a;->a(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Landroid/location/LocationListener;)Lcom/yandex/metrica/impl/ob/ib;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ia;->a:Lcom/yandex/metrica/impl/ob/ib;

    .line 117
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ia;->b:Lcom/yandex/metrica/impl/ob/if;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/ma;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 12

    .line 52
    new-instance v4, Lcom/yandex/metrica/impl/ob/ia$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ia$a;-><init>()V

    new-instance v11, Lcom/yandex/metrica/impl/ob/if;

    move-object v5, v11

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lcom/yandex/metrica/impl/ob/if;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/hs;

    move-object v1, p1

    move-object/from16 v3, p4

    invoke-direct {v6, p1, v3}, Lcom/yandex/metrica/impl/ob/hs;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ia;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/ia$a;Lcom/yandex/metrica/impl/ob/if;Lcom/yandex/metrica/impl/ob/hs;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ia;)Lcom/yandex/metrica/impl/ob/if;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ia;->b:Lcom/yandex/metrica/impl/ob/if;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->c:Lcom/yandex/metrica/impl/ob/hs;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hs;->a()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->b:Lcom/yandex/metrica/impl/ob/if;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ia;->c:Lcom/yandex/metrica/impl/ob/hs;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hs;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/if;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->b:Lcom/yandex/metrica/impl/ob/if;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/if;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->b:Lcom/yandex/metrica/impl/ob/if;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/if;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->c:Lcom/yandex/metrica/impl/ob/hs;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hs;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->a:Lcom/yandex/metrica/impl/ob/ib;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ib;->a()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ia;->a:Lcom/yandex/metrica/impl/ob/ib;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ib;->b()V

    return-void
.end method
