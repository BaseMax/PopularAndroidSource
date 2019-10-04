.class public Lcom/yandex/metrica/ReporterConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/ReporterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/pb;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/pb;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/ReporterConfig$Builder;->a:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/yandex/metrica/ReporterConfig$Builder;->a:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 72
    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/ReporterConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/ReporterConfig;
    .locals 1

    .line 136
    new-instance v0, Lcom/yandex/metrica/ReporterConfig;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/ReporterConfig;-><init>(Lcom/yandex/metrica/ReporterConfig$Builder;)V

    return-object v0
.end method

.method public withLogs()Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 1

    .line 110
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSessionTimeout(I)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 0

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStatisticsSending(Z)Lcom/yandex/metrica/ReporterConfig$Builder;
    .locals 0

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/ReporterConfig$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method
