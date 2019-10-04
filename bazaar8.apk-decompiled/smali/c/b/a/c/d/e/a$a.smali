.class public Lc/b/a/c/d/e/a$a;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/a$a;Lc/b/a/b/c;Ljava/nio/ByteBuffer;I)Lc/b/a/b/a;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/b/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/b/a/b/e;-><init>(Lc/b/a/b/a$a;Lc/b/a/b/c;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
