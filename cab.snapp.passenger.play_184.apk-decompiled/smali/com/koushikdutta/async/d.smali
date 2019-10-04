.class public final Lcom/koushikdutta/async/d;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Peer not trusted by any of the system trust managers."

    .line 5
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/koushikdutta/async/d;->a:Z

    return-void
.end method


# virtual methods
.method public final getIgnore()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->a:Z

    return v0
.end method

.method public final setIgnore(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/koushikdutta/async/d;->a:Z

    return-void
.end method
