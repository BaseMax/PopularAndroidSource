.class Lcom/yandex/metrica/impl/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ak;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/i<",
        "Lcom/yandex/metrica/impl/ob/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ak;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ak;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak$1;->a:Lcom/yandex/metrica/impl/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/j;)Z
    .locals 0

    .line 117
    check-cast p1, Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ak$1;->a(Lcom/yandex/metrica/impl/ob/r;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/r;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak$1;->a:Lcom/yandex/metrica/impl/ak;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ak;->a(Lcom/yandex/metrica/impl/ak;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/r;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
