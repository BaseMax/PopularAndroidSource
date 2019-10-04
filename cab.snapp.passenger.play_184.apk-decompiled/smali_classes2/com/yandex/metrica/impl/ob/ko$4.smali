.class Lcom/yandex/metrica/impl/ob/ko$4;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ko;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ko;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ko;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ko$4;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko$4;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/impl/ob/ko;)Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->e()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->sendEventsBuffer()V

    return-void
.end method
