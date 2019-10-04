.class final Lcom/a/a/c/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/v$b;,
        Lcom/a/a/c/v$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/a/a/c/v$b;


# instance fields
.field a:Lcom/a/a/c/t;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/a/a/c/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/a/a/c/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/c/v$b;-><init>(B)V

    sput-object v0, Lcom/a/a/c/v;->b:Lcom/a/a/c/v$b;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/a/a/c/v$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/c/v;-><init>(Landroid/content/Context;Lcom/a/a/c/v$a;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/a/a/c/v$a;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/a/a/c/v;->c:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/a/a/c/v;->d:Lcom/a/a/c/v$a;

    .line 42
    sget-object p1, Lcom/a/a/c/v;->b:Lcom/a/a/c/v$b;

    iput-object p1, p0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    .line 43
    invoke-virtual {p0, p3}, Lcom/a/a/c/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .line 110
    new-instance v0, Lcom/a/a/c/ad;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Lcom/a/a/c/ad;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crashlytics-userlog-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".temp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/c/v;->d:Lcom/a/a/c/v$a;

    invoke-interface {v1}, Lcom/a/a/c/v$a;->getLogFileDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/a/a/c/b;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    invoke-interface {v0}, Lcom/a/a/c/t;->getLogAsByteString()Lcom/a/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    invoke-interface {v0}, Lcom/a/a/c/t;->closeLogFile()V

    .line 52
    sget-object v0, Lcom/a/a/c/v;->b:Lcom/a/a/c/v$b;

    iput-object v0, p0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/v;->c:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "com.crashlytics.CollectCustomLogs"

    .line 59
    invoke-static {v0, v2, v1}, Lio/fabric/sdk/android/services/common/i;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    const-string v1, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/c/v;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/a/a/c/v;->a(Ljava/io/File;)V

    return-void
.end method

.method final a(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/a/a/c/v;->d:Lcom/a/a/c/v$a;

    invoke-interface {v0}, Lcom/a/a/c/v$a;->getLogFileDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1119
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".temp"

    .line 1120
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0x14

    .line 1124
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 99
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method final b()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    invoke-interface {v0}, Lcom/a/a/c/t;->deleteLogFile()V

    return-void
.end method
