.class public Lcom/yandex/metrica/c;
.super Lcom/yandex/metrica/ReporterConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/ReporterConfig;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/yandex/metrica/ReporterConfig;-><init>(Lcom/yandex/metrica/ReporterConfig;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/yandex/metrica/c;->a:Ljava/lang/Integer;

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/c;->b:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/c$a;)V
    .locals 1

    .line 45
    iget-object v0, p1, Lcom/yandex/metrica/c$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/ReporterConfig;-><init>(Lcom/yandex/metrica/ReporterConfig$Builder;)V

    .line 46
    iget-object v0, p1, Lcom/yandex/metrica/c$a;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/c;->b:Ljava/lang/Integer;

    .line 47
    iget-object v0, p1, Lcom/yandex/metrica/c$a;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/c;->a:Ljava/lang/Integer;

    .line 48
    iget-object v0, p1, Lcom/yandex/metrica/c$a;->d:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/yandex/metrica/c$a;->d:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/c$a;
    .locals 1

    .line 63
    new-instance v0, Lcom/yandex/metrica/c$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/c$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/ReporterConfig;)Lcom/yandex/metrica/c;
    .locals 1

    .line 59
    new-instance v0, Lcom/yandex/metrica/c;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/c;-><init>(Lcom/yandex/metrica/ReporterConfig;)V

    return-object v0
.end method
