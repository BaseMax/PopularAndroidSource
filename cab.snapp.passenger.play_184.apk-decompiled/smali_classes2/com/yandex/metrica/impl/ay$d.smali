.class Lcom/yandex/metrica/impl/ay$d;
.super Lcom/yandex/metrica/impl/ay$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ay$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/Integer;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$d;->i:Ljava/lang/Integer;

    return-object v0
.end method
