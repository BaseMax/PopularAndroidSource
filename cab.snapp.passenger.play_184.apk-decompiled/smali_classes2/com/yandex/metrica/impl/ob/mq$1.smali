.class Lcom/yandex/metrica/impl/ob/mq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/mq;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mq;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq$1;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq$1;->a:Lcom/yandex/metrica/impl/ob/mq;

    new-instance v1, Lcom/yandex/metrica/impl/ob/mq$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/mq$a;-><init>(Lcom/yandex/metrica/impl/ob/mq;B)V

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/mq;->a(Lcom/yandex/metrica/impl/ob/mq;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    return-void
.end method
