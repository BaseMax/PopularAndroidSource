.class final Lcom/a/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buildVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final instanceId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final versionString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/a/a/b/f;->url:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/a/a/b/f;->versionString:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/a/a/b/f;->displayVersion:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/a/a/b/f;->buildVersion:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/a/a/b/f;->packageName:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/a/a/b/f;->instanceId:Ljava/lang/String;

    return-void
.end method
