.class Lcom/yandex/metrica/impl/aj$4;
.super Lcom/yandex/metrica/impl/ob/nl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yandex/metrica/impl/aj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$4;->b:Lcom/yandex/metrica/impl/aj;

    iput-object p2, p0, Lcom/yandex/metrica/impl/aj$4;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$4;->b:Lcom/yandex/metrica/impl/aj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/aj;)Lcom/yandex/metrica/impl/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/aj$4;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Intent;)V

    return-void
.end method
