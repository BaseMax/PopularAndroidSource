.class Lcom/yandex/metrica/impl/ob/ht$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ht;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/hv;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/hv;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ht$1;->a:Lcom/yandex/metrica/impl/ob/hv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ht$1;->a:Lcom/yandex/metrica/impl/ob/hv;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ne;->a([Lcom/yandex/metrica/impl/ob/mn;)Lorg/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hv;->b(Lorg/a/a;)V

    return-void
.end method
