.class Lcom/yandex/metrica/impl/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/Revenue;

.field private final b:Lcom/yandex/metrica/impl/ob/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/os<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/os<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/os<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yandex/metrica/Revenue;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/op;

    const/16 v1, 0x7800

    const-string v2, "revenue payload"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/op;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/ob/os;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/or;

    new-instance v1, Lcom/yandex/metrica/impl/ob/op;

    const v2, 0x2d000

    const-string v3, "receipt data"

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/op;-><init>(ILjava/lang/String;)V

    const-string v2, "<truncated data was not sent, see METRIKALIB-4568>"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/or;-><init>(Lcom/yandex/metrica/impl/ob/os;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->c:Lcom/yandex/metrica/impl/ob/os;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/or;

    new-instance v1, Lcom/yandex/metrica/impl/ob/oq;

    const/16 v3, 0x3e8

    const-string v4, "receipt signature"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/ob/oq;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/or;-><init>(Lcom/yandex/metrica/impl/ob/os;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Lcom/yandex/metrica/impl/ob/os;

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    return-void
.end method


# virtual methods
.method a()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/kd;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kd;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v1, v1, Lcom/yandex/metrica/Revenue;->currency:Ljava/util/Currency;

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kd;->d:[B

    .line 52
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-wide v1, v1, Lcom/yandex/metrica/Revenue;->price:D

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kd;->c:D

    .line 53
    new-instance v1, Lcom/yandex/metrica/impl/ob/oq;

    const/16 v2, 0xc8

    const-string v3, "revenue productID"

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/oq;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v2, v2, Lcom/yandex/metrica/Revenue;->productID:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/oq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/yandex/metrica/impl/bt;->d(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kd;->e:[B

    .line 57
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v1, v1, Lcom/yandex/metrica/Revenue;->quantity:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kd;->b:I

    .line 58
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/ob/os;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v3, v3, Lcom/yandex/metrica/Revenue;->payload:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/yandex/metrica/impl/ob/os;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bt;->d(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kd;->f:[B

    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v1, v1, Lcom/yandex/metrica/Revenue;->receipt:Lcom/yandex/metrica/Revenue$Receipt;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 60
    new-instance v1, Lcom/yandex/metrica/impl/ob/kd$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/kd$a;-><init>()V

    .line 62
    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->c:Lcom/yandex/metrica/impl/ob/os;

    iget-object v4, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v4, v4, Lcom/yandex/metrica/Revenue;->receipt:Lcom/yandex/metrica/Revenue$Receipt;

    iget-object v4, v4, Lcom/yandex/metrica/Revenue$Receipt;->data:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/yandex/metrica/impl/ob/os;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v4, v4, Lcom/yandex/metrica/Revenue;->receipt:Lcom/yandex/metrica/Revenue$Receipt;

    iget-object v4, v4, Lcom/yandex/metrica/Revenue$Receipt;->data:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/yandex/metrica/impl/ob/om;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    iget-object v4, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v4, v4, Lcom/yandex/metrica/Revenue;->receipt:Lcom/yandex/metrica/Revenue$Receipt;

    iget-object v4, v4, Lcom/yandex/metrica/Revenue$Receipt;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    .line 66
    :cond_1
    iget-object v4, p0, Lcom/yandex/metrica/impl/bk;->d:Lcom/yandex/metrica/impl/ob/os;

    iget-object v5, p0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/Revenue;

    iget-object v5, v5, Lcom/yandex/metrica/Revenue;->receipt:Lcom/yandex/metrica/Revenue$Receipt;

    iget-object v5, v5, Lcom/yandex/metrica/Revenue$Receipt;->signature:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/yandex/metrica/impl/ob/os;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    invoke-static {v2}, Lcom/yandex/metrica/impl/bt;->d(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/kd$a;->b:[B

    .line 68
    invoke-static {v4}, Lcom/yandex/metrica/impl/bt;->d(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/kd$a;->c:[B

    .line 69
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kd;->g:Lcom/yandex/metrica/impl/ob/kd$a;

    .line 71
    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;)[B

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
