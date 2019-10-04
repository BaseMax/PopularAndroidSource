.class Lcom/yandex/metrica/impl/ob/hm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/hq;

.field private final b:Lcom/yandex/metrica/impl/ob/ft;

.field private final c:Lcom/yandex/metrica/impl/ob/fs;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hm;->a:Lcom/yandex/metrica/impl/ob/hq;

    .line 32
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hm;->b:Lcom/yandex/metrica/impl/ob/ft;

    .line 33
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hm;->c:Lcom/yandex/metrica/impl/ob/fs;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hm;->a:Lcom/yandex/metrica/impl/ob/hq;

    if-eqz v0, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hm;->b:Lcom/yandex/metrica/impl/ob/ft;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ft;->a()J

    move-result-wide v1

    iget v3, v0, Lcom/yandex/metrica/impl/ob/hq;->h:I

    int-to-long v3, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x3dcccccd    # 0.1f

    if-eqz v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hm;->b:Lcom/yandex/metrica/impl/ob/ft;

    iget v0, v0, Lcom/yandex/metrica/impl/ob/hq;->h:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ft;->c(I)I

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hm;->a:Lcom/yandex/metrica/impl/ob/hq;

    .line 1056
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hm;->c:Lcom/yandex/metrica/impl/ob/fs;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fs;->a()J

    move-result-wide v3

    iget v1, v0, Lcom/yandex/metrica/impl/ob/hq;->h:I

    int-to-long v7, v1

    cmp-long v1, v3, v7

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 1060
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hm;->c:Lcom/yandex/metrica/impl/ob/fs;

    iget v0, v0, Lcom/yandex/metrica/impl/ob/hq;->h:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/fs;->c(I)I

    :cond_3
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hm;->a:Lcom/yandex/metrica/impl/ob/hq;

    return-void
.end method
