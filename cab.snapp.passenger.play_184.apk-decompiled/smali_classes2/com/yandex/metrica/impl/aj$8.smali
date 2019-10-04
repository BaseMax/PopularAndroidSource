.class Lcom/yandex/metrica/impl/aj$8;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/aj;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/yandex/metrica/impl/aj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/aj;Landroid/os/Bundle;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$8;->b:Lcom/yandex/metrica/impl/aj;

    iput-object p2, p0, Lcom/yandex/metrica/impl/aj$8;->a:Landroid/os/Bundle;

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

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$8;->b:Lcom/yandex/metrica/impl/aj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/aj;)Lcom/yandex/metrica/impl/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/aj$8;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/os/Bundle;)V

    return-void
.end method
