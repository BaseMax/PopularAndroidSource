.class final Lcom/a/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buildId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/a/a/b/d;->versionCode:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/a/a/b/d;->versionName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/a/a/b/d;->buildId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/a/a/b/d;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static fromProperties(Ljava/util/Properties;)Lcom/a/a/b/d;
    .locals 4

    const-string v0, "version_code"

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_name"

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_id"

    .line 28
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    .line 29
    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    new-instance v3, Lcom/a/a/b/d;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/a/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static fromPropertiesStream(Ljava/io/InputStream;)Lcom/a/a/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 37
    invoke-static {v0}, Lcom/a/a/b/d;->fromProperties(Ljava/util/Properties;)Lcom/a/a/b/d;

    move-result-object p0

    return-object p0
.end method
