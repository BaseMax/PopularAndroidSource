.class Lcom/yandex/metrica/impl/ob/kq$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->b(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/content/Context;Z)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$11;->c:Lcom/yandex/metrica/impl/ob/kq;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kq$11;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/kq$11;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$11;->c:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kq$11;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/kq$11;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/kp;->b(Landroid/content/Context;Z)V

    return-void
.end method
