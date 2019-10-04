.class Lcom/yandex/metrica/impl/by$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/by;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/by;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/yandex/metrica/impl/by$1;->a:Lcom/yandex/metrica/impl/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/yandex/metrica/impl/by$1;->a:Lcom/yandex/metrica/impl/by;

    invoke-static {p1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/impl/by;)Lcom/yandex/metrica/impl/ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ad;->f()Z

    move-result p1

    return p1
.end method
