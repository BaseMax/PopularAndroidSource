.class Lcom/yandex/metrica/impl/ob/ko$1;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/IIdentifierCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/IIdentifierCallback;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/ko;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ko;Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ko$1;->b:Lcom/yandex/metrica/impl/ob/ko;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ko$1;->a:Lcom/yandex/metrica/IIdentifierCallback;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko$1;->b:Lcom/yandex/metrica/impl/ob/ko;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/impl/ob/ko;)Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko$1;->b:Lcom/yandex/metrica/impl/ob/ko;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/impl/ob/ko;)Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->a()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ko$1;->a:Lcom/yandex/metrica/IIdentifierCallback;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    :cond_0
    return-void
.end method
