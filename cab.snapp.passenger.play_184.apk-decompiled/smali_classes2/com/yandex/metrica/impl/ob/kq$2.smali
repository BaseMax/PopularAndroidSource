.class Lcom/yandex/metrica/impl/ob/kq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$2;->c:Lcom/yandex/metrica/impl/ob/kq;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kq$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/kq$2;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$2;->c:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->e()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kq$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kq$2;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ad;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
