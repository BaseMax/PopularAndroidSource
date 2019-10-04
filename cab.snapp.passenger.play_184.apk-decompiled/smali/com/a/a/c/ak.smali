.class final Lcom/a/a/c/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cause:Lcom/a/a/c/ak;

.field public final className:Ljava/lang/String;

.field public final localizedMessage:Ljava/lang/String;

.field public final stacktrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/a/a/c/aj;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/ak;->localizedMessage:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/ak;->className:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/a/a/c/aj;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/ak;->stacktrace:[Ljava/lang/StackTraceElement;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lcom/a/a/c/ak;

    invoke-direct {v0, p1, p2}, Lcom/a/a/c/ak;-><init>(Ljava/lang/Throwable;Lcom/a/a/c/aj;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/a/a/c/ak;->cause:Lcom/a/a/c/ak;

    return-void
.end method
