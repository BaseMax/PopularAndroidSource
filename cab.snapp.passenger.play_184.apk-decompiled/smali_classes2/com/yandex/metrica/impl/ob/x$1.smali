.class Lcom/yandex/metrica/impl/ob/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/x;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/kv;Lcom/yandex/metrica/impl/an;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/x;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/x;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/x$1;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/kw;)Z
    .locals 1

    .line 98
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/x$1;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/x;->a(Lcom/yandex/metrica/impl/ob/x;)Lcom/yandex/metrica/impl/ob/mb;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/mb;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
