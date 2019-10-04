.class Lcom/yandex/metrica/impl/ob/ey$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ev$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ey;->a(Lcom/yandex/metrica/impl/ob/fa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/fa;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/ey;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ey;Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ey$1;->b:Lcom/yandex/metrica/impl/ob/ey;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ey$1;->a:Lcom/yandex/metrica/impl/ob/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey$1;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ey;->a(Lcom/yandex/metrica/impl/ob/ey;)Lcom/yandex/metrica/impl/ob/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ex;->a()V

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ey$1;->a:Lcom/yandex/metrica/impl/ob/fa;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ey;->b(Lcom/yandex/metrica/impl/ob/fa;)V

    return-void
.end method
