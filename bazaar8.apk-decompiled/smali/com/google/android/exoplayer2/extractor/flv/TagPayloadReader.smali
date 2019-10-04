.class public abstract Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/q;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc/e/a/a/e/q;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/a/o/v;J)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lc/e/a/a/o/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->b(Lc/e/a/a/o/v;J)V

    :cond_0
    return-void
.end method

.method public abstract a(Lc/e/a/a/o/v;)Z
.end method

.method public abstract b(Lc/e/a/a/o/v;J)V
.end method
