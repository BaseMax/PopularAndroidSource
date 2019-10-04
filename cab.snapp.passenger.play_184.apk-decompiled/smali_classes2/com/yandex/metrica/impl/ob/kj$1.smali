.class Lcom/yandex/metrica/impl/ob/kj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/pa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kj;-><init>(Lcom/yandex/metrica/impl/ob/kp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/pa<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/kp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kp;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kj$1;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/oy;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kj$1;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/oy;->a(Lcom/yandex/metrica/impl/ob/pa;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "YandexMetrica isn\'t initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate."

    .line 19
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/oy;->a(Lcom/yandex/metrica/impl/ob/pa;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kj$1;->a()Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method
