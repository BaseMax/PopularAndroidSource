.class public final Lcom/facebook/b/i;
.super Lcom/facebook/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/facebook/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unpacking not supported in test mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
