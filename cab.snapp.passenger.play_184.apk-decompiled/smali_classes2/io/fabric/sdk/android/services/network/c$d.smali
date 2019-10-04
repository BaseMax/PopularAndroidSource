.class public abstract Lio/fabric/sdk/android/services/network/c$d;
.super Lio/fabric/sdk/android/services/network/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/network/c$f<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .locals 0

    .line 659
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/c$f;-><init>()V

    .line 660
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/c$d;->a:Ljava/io/Flushable;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$d;->a:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    return-void
.end method
