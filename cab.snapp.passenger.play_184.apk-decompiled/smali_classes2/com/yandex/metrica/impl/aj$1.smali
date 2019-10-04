.class Lcom/yandex/metrica/impl/aj$1;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/aj;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/aj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/aj;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$1;->a:Lcom/yandex/metrica/impl/aj;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$1;->a:Lcom/yandex/metrica/impl/aj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/aj;)Lcom/yandex/metrica/impl/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ai;->a()V

    return-void
.end method
