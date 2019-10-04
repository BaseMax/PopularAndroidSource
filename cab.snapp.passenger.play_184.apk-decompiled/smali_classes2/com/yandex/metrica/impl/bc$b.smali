.class final Lcom/yandex/metrica/impl/bc$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/yandex/metrica/impl/ob/ka$c$e;

.field final b:Lcom/yandex/metrica/impl/b$a;

.field final c:Z


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ka$c$e;Lcom/yandex/metrica/impl/b$a;Z)V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$b;->a:Lcom/yandex/metrica/impl/ob/ka$c$e;

    .line 588
    iput-object p2, p0, Lcom/yandex/metrica/impl/bc$b;->b:Lcom/yandex/metrica/impl/b$a;

    .line 589
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/bc$b;->c:Z

    return-void
.end method
