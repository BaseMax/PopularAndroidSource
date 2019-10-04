.class final Lcom/yandex/metrica/impl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/pa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/pa<",
        "Lcom/yandex/metrica/impl/ob/ke$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/ke$a;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 0

    .line 54
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ke$a;->b:[Lcom/yandex/metrica/impl/ob/ke$a$a;

    if-eqz p1, :cond_1

    .line 1270
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "attributes list is empty"

    .line 55
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/oy;->a(Lcom/yandex/metrica/impl/ob/pa;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/oy;->a(Lcom/yandex/metrica/impl/ob/pa;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 0

    .line 51
    check-cast p1, Lcom/yandex/metrica/impl/ob/ke$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/c$1;->a(Lcom/yandex/metrica/impl/ob/ke$a;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method
