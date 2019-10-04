.class final Lcom/a/a/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/network/f;


# instance fields
.field private final a:Lcom/a/a/c/ab;


# direct methods
.method public constructor <init>(Lcom/a/a/c/ab;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/ab;

    return-void
.end method


# virtual methods
.method public final getKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/ab;

    invoke-interface {v0}, Lcom/a/a/c/ab;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyStoreStream()Ljava/io/InputStream;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/ab;

    invoke-interface {v0}, Lcom/a/a/c/ab;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPinCreationTimeInMillis()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPins()[Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/ab;

    invoke-interface {v0}, Lcom/a/a/c/ab;->getPins()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
