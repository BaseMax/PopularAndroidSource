.class public abstract Lcom/facebook/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOAD_FLAG_ALLOW_IMPLICIT_PROVISION:I = 0x1

.field public static final LOAD_FLAG_ALLOW_SOURCE_CHANGE:I = 0x2

.field public static final LOAD_FLAG_MIN_CUSTOM_FLAG:I = 0x4

.field public static final LOAD_RESULT_CORRUPTED_LIB_FILE:I = 0x3

.field public static final LOAD_RESULT_IMPLICITLY_PROVIDED:I = 0x2

.field public static final LOAD_RESULT_LOADED:I = 0x1

.field public static final LOAD_RESULT_NOT_FOUND:I = 0x0

.field public static final PREPARE_FLAG_ALLOW_ASYNC_INIT:I = 0x1

.field public static final PREPARE_FLAG_FORCE_REFRESH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public addToLdLibraryPath(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSoSourceAbis()[Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Lcom/facebook/b/m;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
