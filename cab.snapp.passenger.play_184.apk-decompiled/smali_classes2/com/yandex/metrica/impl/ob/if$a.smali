.class public Lcom/yandex/metrica/impl/ob/if$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/hn;)Lcom/yandex/metrica/impl/ob/hr;
    .locals 1

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/ob/hr;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/hr;-><init>(Lcom/yandex/metrica/impl/ob/hn;)V

    return-object v0
.end method
