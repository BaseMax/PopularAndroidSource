.class Lcom/yandex/metrica/impl/ay$i;
.super Lcom/yandex/metrica/impl/ay$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 789
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ay$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[B
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
