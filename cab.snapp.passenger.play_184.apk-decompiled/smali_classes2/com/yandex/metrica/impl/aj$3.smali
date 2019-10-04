.class Lcom/yandex/metrica/impl/aj$3;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yandex/metrica/impl/aj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;II)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$3;->d:Lcom/yandex/metrica/impl/aj;

    iput-object p2, p0, Lcom/yandex/metrica/impl/aj$3;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/yandex/metrica/impl/aj$3;->b:I

    iput p4, p0, Lcom/yandex/metrica/impl/aj$3;->c:I

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$3;->d:Lcom/yandex/metrica/impl/aj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/aj;)Lcom/yandex/metrica/impl/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/aj$3;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/yandex/metrica/impl/aj$3;->b:I

    iget v3, p0, Lcom/yandex/metrica/impl/aj$3;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Intent;II)V

    return-void
.end method
