.class Lcom/yandex/metrica/impl/bm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.yandex.metrica.ConfigurationService"

    .line 1130
    invoke-static {v0}, Lcom/yandex/metrica/impl/bm;->b(Ljava/lang/String;)Z

    move-result v0

    .line 125
    sput-boolean v0, Lcom/yandex/metrica/impl/bm$a;->a:Z

    return-void
.end method
