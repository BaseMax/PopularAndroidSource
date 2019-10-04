.class public Lcom/yandex/metrica/impl/ob/if$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hn;)Lcom/yandex/metrica/impl/ob/ih;
    .locals 1

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/ih;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ih;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hn;)V

    return-object v0
.end method
