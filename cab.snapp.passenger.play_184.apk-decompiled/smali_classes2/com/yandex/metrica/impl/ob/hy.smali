.class Lcom/yandex/metrica/impl/ob/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yandex/metrica/impl/ob/hq;

.field private c:Lcom/yandex/metrica/impl/ob/hn;

.field private d:Landroid/location/Location;

.field private e:J

.field private f:Lcom/yandex/metrica/impl/ob/nq;

.field private g:Lcom/yandex/metrica/impl/ob/ii;

.field private h:Lcom/yandex/metrica/impl/ob/hm;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/hn;Landroid/location/Location;JLcom/yandex/metrica/impl/ob/nq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hy;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    .line 61
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hy;->c:Lcom/yandex/metrica/impl/ob/hn;

    .line 62
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/hy;->d:Landroid/location/Location;

    .line 63
    iput-wide p5, p0, Lcom/yandex/metrica/impl/ob/hy;->e:J

    .line 64
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/hy;->f:Lcom/yandex/metrica/impl/ob/nq;

    .line 65
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/hy;->g:Lcom/yandex/metrica/impl/ob/ii;

    .line 66
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/hy;->h:Lcom/yandex/metrica/impl/ob/hm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/hn;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 10

    .line 43
    new-instance v7, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/hy;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/hn;Landroid/location/Location;JLcom/yandex/metrica/impl/ob/nq;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1100
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    if-eqz v2, :cond_5

    .line 1104
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hy;->d:Landroid/location/Location;

    if-eqz v2, :cond_6

    .line 1126
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hy;->f:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/hy;->e:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    iget-wide v4, v4, Lcom/yandex/metrica/impl/ob/hq;->c:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1173
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hy;->d:Landroid/location/Location;

    invoke-virtual {p1, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    .line 1142
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    iget v4, v4, Lcom/yandex/metrica/impl/ob/hq;->d:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 2154
    :goto_1
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/hy;->d:Landroid/location/Location;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/hy;->d:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    .line 3090
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hy;->d:Landroid/location/Location;

    .line 3091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/hy;->e:J

    .line 3095
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hy;->c:Lcom/yandex/metrica/impl/ob/hn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hy;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    invoke-interface {v0, v1, p1, v2}, Lcom/yandex/metrica/impl/ob/hn;->a(Ljava/lang/String;Landroid/location/Location;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 4086
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hy;->g:Lcom/yandex/metrica/impl/ob/ii;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ii;->a()V

    .line 5082
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hy;->h:Lcom/yandex/metrica/impl/ob/hm;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hm;->a()V

    :cond_7
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 1

    .line 183
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    .line 184
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hy;->g:Lcom/yandex/metrica/impl/ob/ii;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/ii;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 185
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hy;->h:Lcom/yandex/metrica/impl/ob/hm;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hy;->b:Lcom/yandex/metrica/impl/ob/hq;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/hm;->a(Lcom/yandex/metrica/impl/ob/hq;)V

    return-void
.end method
