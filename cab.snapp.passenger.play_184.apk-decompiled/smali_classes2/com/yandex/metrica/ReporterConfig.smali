.class public Lcom/yandex/metrica/ReporterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/ReporterConfig$Builder;
    }
.end annotation


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final logs:Ljava/lang/Boolean;

.field public final sessionTimeout:Ljava/lang/Integer;

.field public final statisticsSending:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/ReporterConfig$Builder;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->a(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->b(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 41
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->c(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 42
    invoke-static {p1}, Lcom/yandex/metrica/ReporterConfig$Builder;->d(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 48
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 49
    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    return-void
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 1

    .line 54
    new-instance v0, Lcom/yandex/metrica/ReporterConfig$Builder;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/ReporterConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
