.class Lcom/yandex/metrica/impl/ob/kn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kn;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kn$1;->b:Lcom/yandex/metrica/impl/ob/kn;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kn$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn$1;->b:Lcom/yandex/metrica/impl/ob/kn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/kn;->a(Lcom/yandex/metrica/impl/ob/kn;)Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kn$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    return-void
.end method
