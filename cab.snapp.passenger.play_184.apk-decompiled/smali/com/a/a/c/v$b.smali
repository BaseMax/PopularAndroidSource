.class final Lcom/a/a/c/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/a/a/c/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeLogFile()V
    .locals 0

    return-void
.end method

.method public final deleteLogFile()V
    .locals 0

    return-void
.end method

.method public final getLogAsByteString()Lcom/a/a/c/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToLog(JLjava/lang/String;)V
    .locals 0

    return-void
.end method
