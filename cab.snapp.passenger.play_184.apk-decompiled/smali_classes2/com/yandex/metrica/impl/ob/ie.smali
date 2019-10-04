.class Lcom/yandex/metrica/impl/ob/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ia;

.field private final b:Lcom/yandex/metrica/impl/ob/ht;

.field private final c:Lcom/yandex/metrica/impl/ob/ii;

.field private final d:Lcom/yandex/metrica/impl/ob/hm;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/ma;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/mw;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 9

    .line 64
    new-instance v8, Lcom/yandex/metrica/impl/ob/ia;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/ia;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/ma;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/ht;

    move-object v0, v6

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/ht;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/mw;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0, v8, v6, v1, v2}, Lcom/yandex/metrica/impl/ob/ie;-><init>(Lcom/yandex/metrica/impl/ob/ia;Lcom/yandex/metrica/impl/ob/ht;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V
    .locals 13

    const-string v0, "location"

    move-object v7, p1

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 47
    invoke-static {p1}, Lcom/yandex/metrica/impl/bw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bw;

    move-result-object v8

    .line 48
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/mw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/mw;

    move-result-object v9

    new-instance v10, Lcom/yandex/metrica/impl/ob/ii;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/ii;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V

    new-instance v11, Lcom/yandex/metrica/impl/ob/hm;

    move-object/from16 v12, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v11, v12, v1, v2}, Lcom/yandex/metrica/impl/ob/hm;-><init>(Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v5, v0

    move-object v6, v8

    move-object v7, v9

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v11

    .line 42
    invoke-direct/range {v1 .. v10}, Lcom/yandex/metrica/impl/ob/ie;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/ma;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/mw;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ia;Lcom/yandex/metrica/impl/ob/ht;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    .line 120
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ie;->b:Lcom/yandex/metrica/impl/ob/ht;

    .line 121
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ie;->c:Lcom/yandex/metrica/impl/ob/ii;

    .line 122
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ie;->d:Lcom/yandex/metrica/impl/ob/hm;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ia;->a()V

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->b:Lcom/yandex/metrica/impl/ob/ht;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ht;->a()V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ia;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 145
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->c:Lcom/yandex/metrica/impl/ob/ii;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ii;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 146
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ie;->d:Lcom/yandex/metrica/impl/ob/hm;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/hm;->a(Lcom/yandex/metrica/impl/ob/hq;)V

    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ia;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ia;->c()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->c:Lcom/yandex/metrica/impl/ob/ii;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ii;->a()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ia;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ia;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ia;->e()V

    return-void
.end method
