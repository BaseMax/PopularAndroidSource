.class Lcom/yandex/metrica/impl/ob/kq$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Z)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$9;->b:Lcom/yandex/metrica/impl/ob/kq;

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/kq$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$9;->b:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/kq$9;->a:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kp;->a(Z)V

    return-void
.end method
