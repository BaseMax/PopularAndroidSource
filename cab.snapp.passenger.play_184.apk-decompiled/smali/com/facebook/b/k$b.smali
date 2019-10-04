.class public final Lcom/facebook/b/k$b;
.super Ljava/lang/UnsatisfiedLinkError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "APK was built for a different platform"

    .line 484
    invoke-direct {p0, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/facebook/b/k$b;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
