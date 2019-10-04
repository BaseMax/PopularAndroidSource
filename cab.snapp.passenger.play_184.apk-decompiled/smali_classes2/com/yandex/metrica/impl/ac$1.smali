.class Lcom/yandex/metrica/impl/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ac;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/k<",
        "Lcom/yandex/metrica/impl/ob/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ac;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ac;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/ac$1;->a:Lcom/yandex/metrica/impl/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/j;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/yandex/metrica/impl/ob/p;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ac$1;->a(Lcom/yandex/metrica/impl/ob/p;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/p;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ac$1;->a:Lcom/yandex/metrica/impl/ac;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/p;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ac;->a(Lcom/yandex/metrica/impl/ac;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
