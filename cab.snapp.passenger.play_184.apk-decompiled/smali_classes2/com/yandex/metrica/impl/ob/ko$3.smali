.class Lcom/yandex/metrica/impl/ob/ko$3;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ko;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/yandex/metrica/impl/ob/ko;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ko;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ko$3;->e:Lcom/yandex/metrica/impl/ob/ko;

    iput p2, p0, Lcom/yandex/metrica/impl/ob/ko$3;->a:I

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ko$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ko$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ko$3;->d:Ljava/util/Map;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko$3;->e:Lcom/yandex/metrica/impl/ob/ko;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/impl/ob/ko;)Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->e()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/ko$3;->a:I

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ko$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ko$3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ko$3;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ad;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
