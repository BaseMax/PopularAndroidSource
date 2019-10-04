.class Lcom/yandex/metrica/impl/ob/ko$2;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ko;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/IIdentifierCallback;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/ko;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ko;Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ko$2;->c:Lcom/yandex/metrica/impl/ob/ko;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ko$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ko$2;->b:Lcom/yandex/metrica/IIdentifierCallback;

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

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko$2;->c:Lcom/yandex/metrica/impl/ob/ko;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/impl/ob/ko;)Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ko$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ko$2;->b:Lcom/yandex/metrica/IIdentifierCallback;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method
